export declare namespace wasm_bindgen {
  export function wasm_parse_markdown_ast(input: string): IElement[];

  export type IElement = string | IHtmlTag;

  export interface IHtmlTag {
    t: string;
    c?: IElement[];
    src?: string;
    href?: string;
    checked?: boolean;
    // foo(what?: object): void;
    nullfoo?: (what: boolean, foo?: IElement) => void;
    // get getterOnly(): string;
    // set setterOnly(val: string);
    readonly immut: void;
  }
}

// declare namespace global {
//   const foo: number;
// }
export function wasm_bindgen(source: any): Promise<any | undefined>;
