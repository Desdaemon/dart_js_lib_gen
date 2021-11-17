use anyhow::Result;
use ariadne::ReportKind;
use dart_js_lib_gen::api::{parse_library, LibraryResult, Message, Source};
use flexi_logger::{Level, Logger};
use log::{error, log_enabled};
use rayon::prelude::*;
use std::fs::File;
use std::io::{Read, Write};

use std::process::Command;
use std::{fs::create_dir_all, path::Path};

use clap::{crate_version, App, Arg};
use dart_js_lib_gen::api::Config;

fn main() {
    let matches = App::new("main")
        .version(crate_version!())
        .about("Generate Dart bindings for JavaScript libraries.")
        .args(&[
              Arg::from_usage("<*.d.ts>... 'TypeScript definition files.'"),
              Arg::from_usage("-w, --write 'Writes the files to *.dart.'")
                .long_help(
"Writes the files to *.dart, If not specified, prints to stdout.
If --no-write is specified, does not output anything."),
              Arg::from_usage("--no-write 'Do not output or write anything.'"),
              Arg::from_usage("-s, --silent 'Silences all logging. Overrides --log if defined.'"),
              Arg::from_usage("--skip-formatting 'Skips code formatting.'")
                .long_help("Skips code formatting, escpecially for longer files where it may be expensive."),
              Arg::from_usage("--dynamic-undefs 'Generate opaque definitions for undeclared types.'"),
              Arg::from_usage("--rename-overloads 'Polyfill function overloads by renaming the overloads.'"),
              Arg::from_usage("--no-imports")
                .help("Skip generating imports for web types from Dart's standard library."),
              Arg::from_usage("--prefix [PREFIX] 'Prefix of the output files.'")
                .default_value(""),
              Arg::from_usage("--suffix [SUFFIX] 'Suffix of the output files.'")
                .default_value(""),
              Arg::from_usage("-l, --line-length [LENGTH] 'Configures the line length of the generated files.'")
                .default_value("120"),
              Arg::from_usage("--log [LOG] 'Configure logging behavior.'")
                .default_value("info")
                .long_help(
"Configure logging behavior. Comma-separated list of these values:
[debug|info|warn|error|off] Adjusts the level of logging, where debug logs everything and off logs nothing.
[crate[::module][=level]]   Specifies the amount of logging per module, defaulting to debug if level is unspecified."),
              Arg::from_usage("-o, --out-dir [DIR] 'Configure output directory, defaults to the parent of each file.'")
                .alias("destination")
        ])
        .get_matches();
    let write = if matches.is_present("no-write") {
        Some(false)
    } else if matches.is_present("write") {
        Some(true)
    } else {
        None // no preference, write to stdout.
    };
    let dynamic_undefs = matches.is_present("dynamic-undefs");
    let rename_overloads = matches.is_present("rename-overloads");
    let do_format = !matches.is_present("skip-formatting");
    let imports = !matches.is_present("no-imports");
    let prefix = matches.value_of("prefix").unwrap();
    let suffix = matches.value_of("suffix").unwrap();
    let line_length = matches.value_of("line-length").unwrap();
    let out_dir = matches.value_of("out-dir");
    if let Some(dir) = &out_dir {
        create_dir_all(dir).unwrap();
    }
    let log_spec = if matches.is_present("silent") {
        Some("off")
    } else {
        matches.value_of("log")
    };
    let inputs = matches
        .values_of("*.d.ts")
        .unwrap()
        .into_iter()
        .filter(|x| x.ends_with(".ts"))
        .collect::<Vec<_>>();
    eprintln!("Parsing {} modules.", inputs.len());
    let config = Config {
        inputs,
        log_spec,
        dynamic_undefs,
        rename_overloads,
        imports,
    };
    let _handle = Logger::try_with_env_or_str(config.log_spec.as_deref().unwrap_or("info"))
        .unwrap()
        .write_mode(flexi_logger::WriteMode::Async)
        .start()
        .unwrap();
    let out_dir = out_dir.map(Path::new);
    parse_library(config)
        .into_par_iter()
        .map(
            |LibraryResult(lib, contents, mes, src)| -> Result<(Vec<Message>, Source)> {
                let mut contents = contents.split(';').collect::<Vec<_>>().join(";\n");
                match write {
                    Some(true) => {
                        let path = Path::new(lib);
                        let base = path.file_stem().unwrap();
                        let base =
                            format!("{}{}{}.dart", &prefix, &base.to_str().unwrap(), &suffix);
                        let out_dir = out_dir.or_else(|| path.parent()).unwrap();
                        let path = out_dir.join(Path::new(&base));
                        let path_str = path.to_string_lossy().to_string();
                        eprintln!("Writing to {}...", &path_str);
                        let mut f = File::create(path)?;
                        f.write_all(contents.as_bytes())?;
                        f.flush()?;
                        if do_format {
                            eprintln!("Formatting {}...", &path_str);
                            dart_format(Either::Left((&path_str, f)), line_length)?;
                        }
                    }
                    None => {
                        if do_format {
                            eprintln!("Formatting {}...", lib);
                            let mut file = dart_format(Either::Right(&contents), line_length)?;
                            let mut buf = String::new();
                            file.read_to_string(&mut buf)?;
                            contents = buf;
                        }
                        println!("{}", contents);
                    }
                    _ => {}
                }
                Ok((mes, src))
            },
        )
        .collect::<Vec<_>>()
        .into_iter()
        .for_each(|res| match res {
            Ok((messages, mut src)) => {
                for Message { kind, report } in messages {
                    match kind {
                        ReportKind::Error if log_enabled!(Level::Error) => {
                            report.eprint(&mut src).unwrap();
                        }
                        ReportKind::Warning if log_enabled!(Level::Warn) => {
                            report.eprint(&mut src).unwrap();
                        }
                        _ => {}
                    }
                }
            }
            Err(e) => {
                error!("{}", e)
            }
        });
}

pub enum Either<L, R> {
    Left(L),
    Right(R),
}

fn dart_format(file: Either<(&str, File), &str>, line_length: &str) -> Result<File> {
    let (path, file) = match file {
        Either::Left((path, f)) => (path.to_owned(), f),
        Either::Right(contents) => {
            let mut f = tempfile::NamedTempFile::new()?;
            f.write_all(contents.as_bytes())?;
            f.flush()?;
            (f.path().to_string_lossy().to_string(), f.into_file())
        }
    };
    let _child = Command::new("dart")
        .args(&["format", "--fix", "-l", line_length, &path])
        .output()?;
    Ok(file)
}
