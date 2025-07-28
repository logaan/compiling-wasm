# Examples

- [ ] Can we export the string "Hello World" without returning it from a fn?
- [ ] Write a fn that prints "Hello World" to STDOUT.
- [ ] Figure out the most idiomatic component naming scheme and do an example with that.
- [ ] Have a public function internally call a private function.
- [x] Tail call yourself until the stack blows
  - It did not (up to a billion at least)
  - It might not [this article](https://web.dev/blog/wasmgc-wasm-tail-call-optimizations-baseline) says TCO has landed.
  - [This one](https://v8.dev/blog/wasm-tail-call) goes into more detail.
  - And [this appears to be the proposal](https://github.com/WebAssembly/tail-call/blob/main/proposals/tail-call/Overview.md).
    - The code example here is almost a useable lisp
- [ ] Bundle some kind of hairy image magick transformation into a wasm component
- [ ] What does the code for working with a Wasm Component variant look like in raw wasm?
- [ ] Pass some environment functions into a wasm runtime
  - [mdn Addition example](https://developer.mozilla.org/en-US/docs/WebAssembly/Reference/Numeric/Addition) shows how it can be done.

# Experiments

- [ ] If a language (like grain) compiles to wasm, but not wasm components how much of a hassle is it to add the component layer?
- [x] Time how long it takes to count to a billion.
  - About 2 seconds using wepl
  - 5.6s in the browser
- [ ] Can you compile wasm in a browser window and have it dynamically loaded and run?
- [ ] Can you get good stack traces?
- [ ] Can you step through with a debugger?
- [ ] Are there something like source maps?
  - wasm_of_ocaml says that there are [in the dune docs](https://dune.readthedocs.io/en/latest/wasmoo.html)

# Languages to try

- [x] Hand coded
  - 228 bytes for `add` as a component
- [x] OCaml
  - 9.7kb for hello world.
- [x] Try [Tinygo](https://github.com/bytecodealliance/go-modules)
  - 17kb
- [x] Rust
  - 21kb to return (not print) hello world with component
- [x] [Grain](http://grain-lang.org)
  - 48kb. Pulling in wasi at the moment. Possibly because we're using the run interface. Maybe there's a way to avoid that.
- [x] Javascript
  - Produces 12mb binaries because it embeds the Spidermonkey runtime
- [x] Try [Python](https://github.com/bytecodealliance/componentize-py)
  - 34mb

# Reading

- [ ] [Wasm Component Async Explainer](https://github.com/WebAssembly/component-model/blob/main/design/mvp/Async.md#streams-and-futures)
