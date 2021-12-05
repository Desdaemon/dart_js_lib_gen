import { parse } from "https://x.nest.land/swc@0.1.4/mod.ts";
import { Module } from "https://x.nest.land/swc@0.1.4/types/options.ts";
import { StringBuf } from "./string_buf.ts";

interface Config {
  inputs: string[];
  dynamicUndefs: boolean;
  renameOverloads: boolean;
}

type LibraryResult = [string, string, Message[], string];
const enum MessageKind {
  Warning,
  Error,
}
type Message<T = string> = { kind: MessageKind; report: T };

function parseLibrary(config: Config): Iterable<LibraryResult> {
}

const toDartCompatIdent = (input: string) => input.replace("-", "_");

async function parseModules(inputs: string[]): Promise<Record<string, Module>> {
  return Object.fromEntries(
    await Promise.all(
      inputs.map(async (path) => {
        const f = await Deno.readTextFile(path);
        return [path, parse(f, { syntax: "typescript" }) as Module] as const;
      }),
    ),
  );
}

type TypeResolutionMap = Map<string, [number, Range]>;
class Range {
  constructor(public start: number, public end: number) {}
}

function* generateTypeParams(count: number) {
  for (const i of generateTypeParams.alphas.substr(0, count)) {
    yield i;
  }
}
generateTypeParams.alphas = "TUVWXYZABCDEFGHIJKLMNOPQRS";

class Transformer {
  path: string[] = [];
  bufs = [new StringBuf()];
  class?: Class;
  undecls: TypeResolutionMap = new Map();
  resolved: TypeResolutionMap = new Map();
  symbols: Map<string, Range> = new Map();
  currentIdent?: string;
  typeLits: Map<string, string> = new Map();
  span = new Range(0, 0);
  source = "";
  messages: Message[] = [];
  comments?: string[];
}

class Class {
  id = "";
  fields: Map<string, string> = new Map();
  anonymous = true;
  members: Set<string> = new Set();
}

interface ProgramVisitor {
  module: Module;
  libraryName: string;
  genUndeclTypedef: boolean;
  renameOverloads: boolean;
  imports: boolean;
}

function visitProgram(
  { module, libraryName, genUndeclTypedef, renameOverloads, imports }:
    ProgramVisitor,
) {
}
