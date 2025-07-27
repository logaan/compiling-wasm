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

# Languages to try

- [x] Try JS
  - Produces 12mb binaries because it embeds the Spidermonkey runtime
- [ ] Try [MoonBit](https://www.moonbitlang.com)
- [ ] Try full blown [Golang](https://github.com/bytecodealliance/go-modules)
- [ ] Try [Tiny Golang](https://github.com/bytecodealliance/go-modules)
- [ ] Try [Python](https://github.com/bytecodealliance/componentize-py)
- [ ] Try [Grain](http://grain-lang.org)
- [ ] Try ocaml
  - [wasm_of_ocaml](https://github.com/ocsigen/js_of_ocaml/blob/master/README_wasm_of_ocaml.md) looks like a good option for building it.

# Reading

- [ ] [Wasm Component Async Explainer](https://github.com/WebAssembly/component-model/blob/main/design/mvp/Async.md#streams-and-futures)
