use clap::{crate_version, App, Arg};

fn main() {
    let matches = App::new("dart_js_lib_gen")
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
              Arg::from_usage("--prefix [PREFIX] 'Prefix of the output files.'"),
              Arg::from_usage("--suffix [SUFFIX] 'Suffix of the output files.'"),
              Arg::from_usage("-l, --line-length [LENGTH] 'Configures the line length of the generated files.'")
                .default_value("120"),
              Arg::from_usage("--log [LOG] 'Configure logging behavior.'")
                .default_value("info"),
              Arg::from_usage("-o, --out-dir [DIR] 'Configure output directory, defaults to the parent of each file.'")
                .alias("destination")
        ])
        .get_matches();
    let files = matches
        .values_of("*.d.ts")
        .unwrap()
        .into_iter()
        .skip(if cfg!(debug_assertions) { 1 } else { 0 })
        .collect::<Vec<_>>();
    dbg!(files);
}
