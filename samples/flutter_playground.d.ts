declare namespace wasm_bindgen {
  /* tslint:disable */
  /* eslint-disable */
  /**
   * Parses Markdown input and returns a JSON string of the AST.
   * @param {string} input
   * @returns {string}
   */
  export function wasm_parse_markdown(input: string): string;

  export type IElement = string | IHtmlTag;

  export interface IHtmlTag {
    t: string;
    /** A list of strings and [IHtmlTag] */
    c?: IElement[];
    style?: string;
    src?: string;
    href?: string;
    checked?: boolean;
    display?: boolean;
  }

  export function wasm_parse_markdown_ast(input: string): IElement[];
}

declare type InitInput =
  | RequestInfo
  | URL
  | Response
  | BufferSource
  | WebAssembly.Module;

declare interface InitOutput {
  readonly memory: WebAssembly.Memory;
  readonly parse_markdown: (a: number) => number;
  readonly parse_markdown_xml: (a: number) => number;
  readonly parse_markdown_ast: (a: number) => number;
  readonly free_elements: (a: number) => void;
  readonly parse_markdown_ast_json: (a: number) => number;
  readonly free_string: (a: number) => void;
  readonly as_text: (a: number) => number;
  readonly as_tag: (a: number) => number;
  readonly wasm_parse_markdown: (a: number, b: number, c: number) => void;
  readonly wasm_parse_markdown_ast: (a: number, b: number) => number;
  readonly __wbindgen_add_to_stack_pointer: (a: number) => number;
  readonly __wbindgen_malloc: (a: number) => number;
  readonly __wbindgen_realloc: (a: number, b: number, c: number) => number;
  readonly __wbindgen_free: (a: number, b: number) => void;
}

/**
 * If `module_or_path` is {RequestInfo} or {URL}, makes a request and
 * for everything else, calls `WebAssembly.instantiate` directly.
 *
 * @param {InitInput | Promise<InitInput>} module_or_path
 *
 * @returns {Promise<InitOutput>}
 */
declare function wasm_bindgen(
  module_or_path?: InitInput | Promise<InitInput>
): Promise<InitOutput>;
