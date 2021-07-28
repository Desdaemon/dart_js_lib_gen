export declare namespace wasm_bindgen {
  export function wasm_parse_markdown_ast(input: string): IElement[];

  export type IElement = string | IHtmlTag;

  export interface IHtmlTag {
    t: string;
    c?: IElement[];
    src?: string;
    href?: string;
    checked?: boolean;
  }
}

export function wasm_bindgen(source: any): Promise<void>;

declare namespace foo {
  export namespace bar {
    export const asd: string;
  }
}
