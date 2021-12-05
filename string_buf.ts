export class StringBuf {
  private buf: number[] = [];

  push(input: string) {
    let idx = 0, char;
    // deno-lint-ignore no-cond-assign
    while (char = input.charCodeAt(idx++)) {
      this.buf.push(char);
    }
  }

  toString(): string {
    return String.fromCharCode(...this.buf);
  }
}
