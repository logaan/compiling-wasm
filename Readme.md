# Examples

- [ ] Can we export the string "Hello World" without returning it from a fn?
- [ ] Write a fn that prints "Hello World" to STDOUT.
- [ ] Figure out the most idiomatic component naming scheme and do an example with that.
- [ ] Have a public function internally call a private function.
- [ ] Tail call yourself until the stack blows
  - It might not [this article](https://web.dev/blog/wasmgc-wasm-tail-call-optimizations-baseline) says TCO has landed.
  - [This one](https://v8.dev/blog/wasm-tail-call) goes into more detail.
  - And [this appears to be the proposal](https://github.com/WebAssembly/tail-call/blob/main/proposals/tail-call/Overview.md).
    - The code example here is almost a useable lisp
- [ ] Bundle some kind of hairy image magick transformation into a wasm component
- [ ] Pass some environment functions into a wasm runtime
  - [mdn Addition example](https://developer.mozilla.org/en-US/docs/WebAssembly/Reference/Numeric/Addition) shows how it can be done.

# Experiments

- [ ] If a language (like grain) compiles to wasm, but not wasm components how much of a hassle is it to add the component layer?
- [ ] Time how long it takes to count to a billion.
- [ ] Can you compile wasm in a browser window and have it dynamically loaded and run?
- [ ] Can you get good stack traces?
- [ ] Can you step through with a debugger?
- [ ] Are there something like source maps?
  - wasm_of_ocaml says that there are [in the dune docs](https://dune.readthedocs.io/en/latest/wasmoo.html)

# Languages to try

- [x] Band coded
  - 228 bytes for `add` as a component
- [x] Javascript
  - Produces 12mb binaries because it embeds the Spidermonkey runtime
- [x] [Grain](http://grain-lang.org)
  - 48kb. Pulling in wasi at the moment. Possibly because we're using the run interface. Maybe there's a way to avoid that.
- [x] OCaml
  - 9.7kb for hello world.
- [x] Try [Tinygo](https://github.com/bytecodealliance/go-modules)
  - 17kb
- [ ] Try [Python](https://github.com/bytecodealliance/componentize-py)
  - 
- [ ] Rust
  - 21kb to return (not print) hello world with component

# Reading

- [ ] [Wasm Component Async Explainer](https://github.com/WebAssembly/component-model/blob/main/design/mvp/Async.md#streams-and-futures)
