# Examples

- [x] Can WIT express the type of an AST for a simple language?
  - You have a variant type with a constructor(??) for each type
  - When it comes to collections, functions, etc then you go recursive.
    - Can't.
  - Perhaps a simpler question is just can WIT express a cons based linked list?
    - Nope.
- [x] Can we export the string "Hello World" without returning it from a fn?
  - The
  [Explainer](https://github.com/WebAssembly/component-model/blob/main/design/mvp/Explainer.md#-value-definitions)
  mentions value types, but I don't see a way of expressing it in [the WIT
  definition](https://github.com/WebAssembly/component-model/blob/main/design/mvp/WIT.md)
- [x] Write a fn that prints "Hello World" to STDOUT.
- [x] Figure out the most idiomatic component naming scheme and do an example with that.
  - It's pretty restrictive. Basically just:
  - `package your-namespace:the-things-name@1.2.3;`
- [x] Have a public function internally call a private function.
  - With coding at the WAT level being unrealistic it's north worth it to try this.
- [x] Tail call yourself until the stack blows
  - It did not (up to a billion at least)
  - It might not [this article](https://web.dev/blog/wasmgc-wasm-tail-call-optimizations-baseline) says TCO has landed.
  - [This one](https://v8.dev/blog/wasm-tail-call) goes into more detail.
  - And [this appears to be the proposal](https://github.com/WebAssembly/tail-call/blob/main/proposals/tail-call/Overview.md).
    - The code example here is almost a useable lisp
- [ ] Bundle some kind of hairy image magick transformation into a wasm component
- [x] What does the code for working with a Wasm Component variant look like in raw wasm?
  - Huge. Unreasonably large for a human.
- [ ] Pass some environment functions into a wasm runtime
  - [mdn Addition example](https://developer.mozilla.org/en-US/docs/WebAssembly/Reference/Numeric/Addition) shows how it can be done.
  - I wonder if it can be done with WASM Components and Wit though? Maybe with a reference?
- [x] Can WIT even express functions as data? A function being passed to a function?
  - Nope.
  - If not then we're going to have to have different application behaviour for
    Nana code vs WasmC code. Because I definately want higher order functions in
    Nana.
  - Maybe you have 3 levels of visibility:
    - Private to the current Nana file / module
      - Can have a permissive signature
      - Doesn't even need to have a signature nessisarily
    - Public to other Nana files / modules
      - Can have a permissive signature
      - Doesn't even need to have a signature nessisarily
    - Published at the component level
      - This would introduce much stricter restrictions on the function signature
- What would a language look like if it was limited purely to wit?
  - No higher order functions
    - Maybe with some language constructs this could be liveable, even in a
      mostly pure world? Like Clojure's `for` loops could substitute for
      `map`... If you had a kind of `mapCat` version then I guess you could
      implement things like `filter`.
    - You do have tail call optimisation... so you could do loops over data
      without fancy features. But how do you hold on to transformation /
      filtering functions?
    - Maybe you miss out on annonymous functions but you do let people do
      `apply("functionname", arg, arg, arg)`. But WIT can't even express that
      type, it doesn't have `Any` or generics.
      - "User-defined records can't be generic (that is, parameterised by type).
        Only built-in types can be generic."
      - Maybe you could accomplish it with a variant that had a constructur for
        every type. But it would be so cumbersome to work with `apply("sum", [u8(1), u8(2)])`.
      - So then maybe something like apply isn't really exposed as a function
        but instead a special language thing. Like js can do: `this["sum"](1,2)`.
      - Then strings are acting as a shitty holder for named references. It's
        not great.
    - I don't think there's a way of doing it that results in a language I'd be
      proud of creating or excited to work with.
  - No polymorphism
  - No recursive data structures

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
- [x] C
  - 49kb. For a variant example with no wasi.
- [x] Javascript
  - Produces 12mb binaries because it embeds the Spidermonkey runtime
- [x] Try [Python](https://github.com/bytecodealliance/componentize-py)
  - 34mb

# Reading

- [ ] [Wasm Component Async Explainer](https://github.com/WebAssembly/component-model/blob/main/design/mvp/Async.md#streams-and-futures)

# All wasm component types

The [Component Model Binary Format
Explainer](https://github.com/WebAssembly/component-model/blob/main/design/mvp/Binary.md)
lists these types.

``` ebnf
type          ::= dt:<deftype>                            => (type dt)
deftype       ::= dvt:<defvaltype>                        => dvt
                | ft:<functype>                           => ft
                | ct:<componenttype>                      => ct
                | it:<instancetype>                       => it
                | rt:<resourcetype>                       => rt
primvaltype   ::= 0x7f                                    => bool
                | 0x7e                                    => s8
                | 0x7d                                    => u8
                | 0x7c                                    => s16
                | 0x7b                                    => u16
                | 0x7a                                    => s32
                | 0x79                                    => u32
                | 0x78                                    => s64
                | 0x77                                    => u64
                | 0x76                                    => f32
                | 0x75                                    => f64
                | 0x74                                    => char
                | 0x73                                    => string
                | 0x64                                    => error-context
defvaltype    ::= pvt:<primvaltype>                       => pvt
                | 0x72 lt*:vec(<labelvaltype>)            => (record (field lt)*)    (if |lt*| > 0)
                | 0x71 case*:vec(<case>)                  => (variant case+) (if |case*| > 0)
                | 0x70 t:<valtype>                        => (list t)
                | 0x67 t:<valtype> len:<u32>              => (list t len)  (if len > 0) 🔧
                | 0x6f t*:vec(<valtype>)                  => (tuple t+)    (if |t*| > 0)
                | 0x6e l*:vec(<label'>)                   => (flags l+)    (if 0 < |l*| <= 32)
                | 0x6d l*:vec(<label'>)                   => (enum l+)     (if |l*| > 0)
                | 0x6b t:<valtype>                        => (option t)
                | 0x6a t?:<valtype>? u?:<valtype>?        => (result t? (error u)?)
                | 0x69 i:<typeidx>                        => (own i)
                | 0x68 i:<typeidx>                        => (borrow i)
                | 0x66 t?:<valtype>?                      => (stream t?)
                | 0x65 t?:<valtype>?                      => (future t?)
```

Not sure what an error context is. Not sure what impact own and borrow will have.

I hadn't considered making Components first class, but if they're going to form
the basis of a module system it makes sense. Unless they can't be passed as
arguments to functions and stuff in the component spec. I'm not sure what
instances are. Resources will need to be first class.

Interfaces should also come to be part of the language. Without static type
checking they won't really be playing their regular role. Perhaps they become
the basis for polymorphism?

