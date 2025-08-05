(module
  (func $billion (param $x i32) (result i32)
    (if (i32.eqz (local.get $x))
      (then (return (i32.const 42)))
      (else (return_call $billion (i32.sub (local.get $x) (i32.const 1)))))
    (unreachable))

  (export "billion" (func $billion)))
