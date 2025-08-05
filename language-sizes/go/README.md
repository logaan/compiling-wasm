```
$ nana.wasm.go % du -h add.component.wasm
 20K	add.component.wasm

$ nana.wasm.go % wepl add.component.wasm
World: root:component/root
> .imports
> .exports
add: func(x: s32, y: s32) -> s32
> add(1,2)
3
```
