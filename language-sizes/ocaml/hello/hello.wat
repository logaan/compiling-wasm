(module
  (type $bytes (;0;) (array (mut i8)))
  (type $block (;1;) (array (mut (ref eq))))
  (type $js (;2;) (struct (field anyref)))
  (type $buffer (;3;) (struct (field (mut i32)) (field (ref $bytes))))
  (type $assoc (;4;) (struct (field (ref $bytes)) (field (mut (ref eq))) (field (mut (ref null $assoc)))))
  (type $function_1 (;5;) (func (param (ref eq) (ref eq)) (result (ref eq))))
  (type $closure (;6;) (sub (struct (field (ref $function_1)))))
  (type $fd_offset (;7;) (struct (field $offset (mut i64)) (field $seeked (mut i32))))
  (type $stack_45 (;8;) (struct (field $s (ref $bytes)) (field $next (ref null $stack_45))))
  (type $dup (;9;) (func (param (ref eq)) (result (ref eq))))
  (type $compare (;10;) (func (param (ref eq) (ref eq) i32) (result i32)))
  (type $wstring (;11;) (array (mut i16)))
  (type $chars (;12;) (array i8))
  (type $hash (;13;) (func (param (ref eq)) (result i32)))
  (type $fixed_length (;14;) (struct (field $bsize_32 i32) (field $bsize_64 i32)))
  (type $serialize (;15;) (func (param (ref eq) (ref eq)) (result i32 i32)))
  (type $deserialize (;16;) (func (param (ref eq)) (result (ref eq) i32)))
  (type $custom_operations (;17;) (struct (field $id (ref $bytes)) (field $compare (ref null $compare)) (field $compare_ext (ref null $compare)) (field $hash (ref null $hash)) (field $fixed_length (ref null $fixed_length)) (field $serialize (ref null $serialize)) (field $deserialize (ref null $deserialize)) (field $dup (ref null $dup))))
  (type $func (;18;) (func (result (ref eq))))
  (type $assoc_array (;19;) (array (mut (ref null $assoc))))
  (type $custom (;20;) (sub (struct (field (ref $custom_operations)))))
  (type $custom_with_id (;21;) (sub $custom (struct (field (ref $custom_operations)) (field $id i64))))
  (type $channel (;22;) (sub final $custom_with_id (struct (field (ref $custom_operations)) (field i64) (field $fd (mut i32)) (field $buffer (mut (ref extern))) (field $buffer_view (mut (ref extern))) (field $curr (mut i32)) (field $max (mut i32)) (field $size (mut i32)) (field $unbuffered (mut i32)))))
  (type $closure_last_arg (;23;) (sub $closure (struct (field (ref $function_1)))))
  (type $env_1_0 (;24;) (sub final $closure_last_arg (struct (field (ref $function_1)) (field (ref $block)))))
  (type (;25;) (func (param (ref eq))))
  (type (;26;) (func))
  (type (;27;) (func (param externref)))
  (type $function_2 (;28;) (func (param (ref eq) (ref eq) (ref eq)) (result (ref eq))))
  (type (;29;) (func (param i32) (result (ref extern))))
  (type (;30;) (func (result (ref extern))))
  (type (;31;) (func (param i32)))
  (type (;32;) (func (param externref i32 i32)))
  (type (;33;) (func (param (ref $bytes) i32 i32)))
  (type $closure_2 (;34;) (sub $closure (struct (field (ref $function_1)) (field (ref $function_2)))))
  (type (;35;) (func (result i32 i32 i32 i32 i32)))
  (type (;36;) (func (param (ref extern) i32 (ref $fd_offset))))
  (type (;37;) (func (param (ref null $wstring) i32 i32) (result (ref extern))))
  (type (;38;) (func (param (ref null $bytes) i32 i32) (result (ref extern))))
  (type (;39;) (func (param i32 i32) (result anyref)))
  (type (;40;) (func (param anyref anyref anyref) (result anyref)))
  (type (;41;) (func (param (ref extern)) (result (ref extern))))
  (type (;42;) (func (param externref externref) (result i32)))
  (type (;43;) (func (param (ref extern) i32 anyref)))
  (type (;44;) (func (param anyref) (result i32)))
  (type (;45;) (func (param i32 anyref)))
  (type (;46;) (func (param i32 (ref extern) i32 i32 nullexternref) (result i32)))
  (type (;47;) (func (param i32 (ref extern) i32 i32 i64) (result i32)))
  (type (;48;) (func (param (ref extern) i32 i32 i32)))
  (type (;49;) (func (param (ref $bytes) i32 (ref extern) i32 i32)))
  (type (;50;) (func (param i32) (result anyref)))
  (type (;51;) (func (param (ref extern) i32) (result (ref null $fd_offset))))
  (type (;52;) (func (param externref) (result (ref $bytes))))
  (type (;53;) (func (result anyref)))
  (type (;54;) (func (param (ref extern)) (result i32)))
  (type (;55;) (func (param (ref extern) i32) (result anyref)))
  (type (;56;) (func (param anyref anyref) (result anyref)))
  (type (;57;) (func (param (ref i31) (ref $block))))
  (type (;58;) (func (param (ref $bytes)) (result anyref)))
  (type (;59;) (func (param (ref $bytes)) (result eqref)))
  (type (;60;) (func (param (ref $channel)) (result i32)))
  (type (;61;) (func (param (ref $buffer) (ref eq))))
  (type (;62;) (func (param (ref $bytes) (ref null $assoc)) (result (ref null $assoc))))
  (type (;63;) (func (param (ref eq)) (result (ref $bytes))))
  (type (;64;) (func (param (ref i31) (ref $bytes)) (result (ref i31))))
  (type (;65;) (func (param (ref eq) (ref $bytes)) (result (ref $bytes))))
  (type (;66;) (func (param (ref i31)) (result (ref $channel))))
  (type (;67;) (func (param (ref $func))))
  (type (;68;) (func (param (ref $bytes)) (result (ref $js))))
  (type (;69;) (func (param (ref $channel))))
  (type (;70;) (func (param (ref $bytes)) (result i32 i32 i32 i32 i32)))
  (type (;71;) (func (param (ref $bytes) i32) (result anyref)))
  (type (;72;) (func (param i32) (result (ref $fd_offset))))
  (type (;73;) (func (param (ref $bytes) i32) (result (ref $bytes))))
  (type (;74;) (func (param externref) (result (ref $block))))
  (type (;75;) (func (param (ref $bytes) (ref $bytes)) (result (ref i31))))
  (type (;76;) (func (param (ref $env_1_0))))
  (type (;77;) (func (param (ref $channel) i32)))
  (type (;78;) (func (param (ref $channel) (ref $bytes) i32 i32) (result i32)))
  (type (;79;) (func (param (ref eq) (ref i31))))
  (type (;80;) (func (param (ref eq) (ref i31) (ref i31))))
  (type (;81;) (func (result (ref $js))))
  (type (;82;) (func (param (ref eq) (ref $block)) (result (ref eq))))
  (type (;83;) (func (param (ref $block)) (result (ref $js))))
  (type (;84;) (func (param i32 (ref $bytes)) (result i32)))
  (type (;85;) (func (param (ref $bytes) (ref i31)) (result (ref $bytes))))
  (type (;86;) (func (param (ref eq) (ref eq) (ref i31)) (result (ref eq))))
  (type (;87;) (func (param (ref $block)) (result (ref eq))))
  (type (;88;) (func (param anyref) (result (ref $bytes))))
  (type (;89;) (func (param externref i32) (result i32)))
  (import "bindings" "new_array" (func $new_array (;0;) (type 29)))
  (import "bindings" "map_set" (func $map_set (;1;) (type 36)))
  (import "wasm:js-string" "fromCharCodeArray" (func $fromCharCodeArray (;2;) (type 37)))
  (import "wasm:text-decoder" "decodeStringFromUTF8Array" (func $decodeStringFromUTF8Array (;3;) (type 38)))
  (import "bindings" "ta_new" (func $ta_new (;4;) (type 29)))
  (import "bindings" "read_string_stream" (func $read_string_stream (;5;) (type 39)))
  (import "bindings" "meth_call" (func $meth_call (;6;) (type 40)))
  (import "bindings" "dv_make" (func $dv_make (;7;) (type 41)))
  (import "wasm:js-string" "compare" (func $compare_strings (;8;) (type 42)))
  (import "bindings" "array_set" (func $array_set (;9;) (type 43)))
  (import "bindings" "write_string" (func $write_string (;10;) (type 44)))
  (import "bindings" "write" (func $write_818 (;11;) (type 45)))
  (import "bindings" "write" (func $write' (;12;) (type 46)))
  (import "bindings" "write" (func $write (;13;) (type 47)))
  (import "bindings" "ta_copy" (func $ta_copy (;14;) (type 48)))
  (import "bindings" "ta_blit_from_bytes" (func $ta_blit_from_bytes (;15;) (type 49)))
  (import "bindings" "register_channel" (func $register_channel (;16;) (type 25)))
  (import "bindings" "read_string" (func $read_string (;17;) (type 50)))
  (import "bindings" "map_new" (func $map_new (;18;) (type 30)))
  (import "bindings" "map_get" (func $map_get (;19;) (type 51)))
  (import "bindings" "exit" (func $exit (;20;) (type 31)))
  (import "wasm:text-encoder" "encodeStringToUTF8Array" (func $encodeStringToUTF8Array (;21;) (type 52)))
  (import "bindings" "dv_set_i8" (func $dv_set_i8 (;22;) (type 32)))
  (import "bindings" "channel_list" (func $channel_list (;23;) (type 53)))
  (import "bindings" "array_length" (func $array_length (;24;) (type 54)))
  (import "bindings" "array_get" (func $array_get (;25;) (type 55)))
  (import "bindings" "append_string" (func $append_string (;26;) (type 56)))
  (import "bindings" "jstag" (tag $javascript_exception_2 (;0;) (type 27) (param externref)))
  (memory (;0;) 1)
  (tag $ocaml_exception_2 (;1;) (type 25) (param (ref eq)))
  (tag $ocaml_exit_10 (;2;) (type 26))
  (global $caml_global_data_254 (;0;) (ref $block) i32.const 0 ref.i31 i32.const 12 array.new $block)
  (global $next_id (;1;) (mut i64) i64.const 0)
  (global $stack_99 (;2;) (mut (ref null $stack_45)) ref.null none)
  (global $named_value_table (;3;) (ref $assoc_array) ref.null none i32.const 13 array.new $assoc_array)
  (global $text_converters_available (;4;) (mut i32) i32.const 0)
  (global $lowercase_hex_table_84 (;5;) (ref $chars) i32.const 48 i32.const 49 i32.const 50 i32.const 51 i32.const 52 i32.const 53 i32.const 54 i32.const 55 i32.const 56 i32.const 57 i32.const 97 i32.const 98 i32.const 99 i32.const 100 i32.const 101 i32.const 102 array.new_fixed $chars 16)
  (global $fd_offsets (;6;) (mut externref) ref.null noextern)
  (global $jsError (;7;) (ref $bytes) i32.const 106 i32.const 115 i32.const 69 i32.const 114 i32.const 114 i32.const 111 i32.const 114 array.new_fixed $bytes 7)
  (global $string_builtins_available (;8;) (mut i32) i32.const 0)
  (global $buffer_99 (;9;) (mut (ref $wstring)) i32.const 0 i32.const 0 array.new $wstring)
  (global $uppercase_hex_table_84 (;10;) (ref $chars) i32.const 48 i32.const 49 i32.const 50 i32.const 51 i32.const 52 i32.const 53 i32.const 54 i32.const 55 i32.const 56 i32.const 57 i32.const 65 i32.const 66 i32.const 67 i32.const 68 i32.const 69 i32.const 70 array.new_fixed $chars 16)
  (global $channel_ops (;11;) (ref $custom_operations) i32.const 95 i32.const 99 i32.const 104 i32.const 97 i32.const 110 array.new_fixed $bytes 5 ref.func $custom_compare_id ref.null nofunc ref.func $custom_hash_id ref.null none ref.null nofunc ref.null nofunc ref.null nofunc struct.new $custom_operations)
  (global $uncaught_exception (;12;) (mut externref) ref.null noextern)
  (global $const$$1 (;13;) (ref $block) i32.const 248 ref.i31 i32.const 83 i32.const 121 i32.const 115 i32.const 95 i32.const 101 i32.const 114 i32.const 114 i32.const 111 i32.const 114 array.new_fixed $bytes 9 i32.const -2 ref.i31 array.new_fixed $block 3)
  (global $format_error_84 (;14;) (ref $bytes) i32.const 102 i32.const 111 i32.const 114 i32.const 109 i32.const 97 i32.const 116 i32.const 95 i32.const 105 i32.const 110 i32.const 116 i32.const 58 i32.const 32 i32.const 98 i32.const 97 i32.const 100 i32.const 32 i32.const 102 i32.const 111 i32.const 114 i32.const 109 i32.const 97 i32.const 116 array.new_fixed $bytes 22)
  (global $bad_file_descriptor (;15;) (ref $bytes) i32.const 66 i32.const 97 i32.const 100 i32.const 32 i32.const 102 i32.const 105 i32.const 108 i32.const 101 i32.const 32 i32.const 100 i32.const 101 i32.const 115 i32.const 99 i32.const 114 i32.const 105 i32.const 112 i32.const 116 i32.const 111 i32.const 114 array.new_fixed $bytes 19)
  (global $toString (;16;) (ref $bytes) i32.const 116 i32.const 111 i32.const 83 i32.const 116 i32.const 114 i32.const 105 i32.const 110 i32.const 103 array.new_fixed $bytes 8)
  (global $fatal_error (;17;) (ref $bytes) i32.const 70 i32.const 97 i32.const 116 i32.const 97 i32.const 108 i32.const 32 i32.const 101 i32.const 114 i32.const 114 i32.const 111 i32.const 114 i32.const 58 i32.const 32 i32.const 101 i32.const 120 i32.const 99 i32.const 101 i32.const 112 i32.const 116 i32.const 105 i32.const 111 i32.const 110 i32.const 32 array.new_fixed $bytes 23)
  (global $handle_uncaught_exception (;18;) (ref $bytes) i32.const 80 i32.const 114 i32.const 105 i32.const 110 i32.const 116 i32.const 101 i32.const 120 i32.const 99 i32.const 46 i32.const 104 i32.const 97 i32.const 110 i32.const 100 i32.const 108 i32.const 101 i32.const 95 i32.const 117 i32.const 110 i32.const 99 i32.const 97 i32.const 117 i32.const 103 i32.const 104 i32.const 116 i32.const 95 i32.const 101 i32.const 120 i32.const 99 i32.const 101 i32.const 112 i32.const 116 i32.const 105 i32.const 111 i32.const 110 array.new_fixed $bytes 34)
  (global $do_at_exit (;19;) (ref $bytes) i32.const 80 i32.const 101 i32.const 114 i32.const 118 i32.const 97 i32.const 115 i32.const 105 i32.const 118 i32.const 101 i32.const 115 i32.const 46 i32.const 100 i32.const 111 i32.const 95 i32.const 97 i32.const 116 i32.const 95 i32.const 101 i32.const 120 i32.const 105 i32.const 116 array.new_fixed $bytes 21)
  (global $toString_272 (;20;) (ref $bytes) i32.const 116 i32.const 111 i32.const 83 i32.const 116 i32.const 114 i32.const 105 i32.const 110 i32.const 103 array.new_fixed $bytes 8)
  (global $const$ (;21;) (ref $block) i32.const 248 ref.i31 i32.const 79 i32.const 117 i32.const 116 i32.const 95 i32.const 111 i32.const 102 i32.const 95 i32.const 109 i32.const 101 i32.const 109 i32.const 111 i32.const 114 i32.const 121 array.new_fixed $bytes 13 i32.const -1 ref.i31 array.new_fixed $block 3)
  (global $const$$2 (;22;) (ref $block) i32.const 248 ref.i31 i32.const 70 i32.const 97 i32.const 105 i32.const 108 i32.const 117 i32.const 114 i32.const 101 array.new_fixed $bytes 7 i32.const -3 ref.i31 array.new_fixed $block 3)
  (global $const$$3 (;23;) (ref $block) i32.const 248 ref.i31 i32.const 73 i32.const 110 i32.const 118 i32.const 97 i32.const 108 i32.const 105 i32.const 100 i32.const 95 i32.const 97 i32.const 114 i32.const 103 i32.const 117 i32.const 109 i32.const 101 i32.const 110 i32.const 116 array.new_fixed $bytes 16 i32.const -4 ref.i31 array.new_fixed $block 3)
  (global $const$$4 (;24;) (ref $block) i32.const 248 ref.i31 i32.const 69 i32.const 110 i32.const 100 i32.const 95 i32.const 111 i32.const 102 i32.const 95 i32.const 102 i32.const 105 i32.const 108 i32.const 101 array.new_fixed $bytes 11 i32.const -5 ref.i31 array.new_fixed $block 3)
  (global $const$$5 (;25;) (ref $block) i32.const 248 ref.i31 i32.const 68 i32.const 105 i32.const 118 i32.const 105 i32.const 115 i32.const 105 i32.const 111 i32.const 110 i32.const 95 i32.const 98 i32.const 121 i32.const 95 i32.const 122 i32.const 101 i32.const 114 i32.const 111 array.new_fixed $bytes 16 i32.const -6 ref.i31 array.new_fixed $block 3)
  (global $const$$6 (;26;) (ref $block) i32.const 248 ref.i31 i32.const 78 i32.const 111 i32.const 116 i32.const 95 i32.const 102 i32.const 111 i32.const 117 i32.const 110 i32.const 100 array.new_fixed $bytes 9 i32.const -7 ref.i31 array.new_fixed $block 3)
  (global $const$$7 (;27;) (ref $block) i32.const 248 ref.i31 i32.const 77 i32.const 97 i32.const 116 i32.const 99 i32.const 104 i32.const 95 i32.const 102 i32.const 97 i32.const 105 i32.const 108 i32.const 117 i32.const 114 i32.const 101 array.new_fixed $bytes 13 i32.const -8 ref.i31 array.new_fixed $block 3)
  (global $const$$8 (;28;) (ref $block) i32.const 248 ref.i31 i32.const 83 i32.const 116 i32.const 97 i32.const 99 i32.const 107 i32.const 95 i32.const 111 i32.const 118 i32.const 101 i32.const 114 i32.const 102 i32.const 108 i32.const 111 i32.const 119 array.new_fixed $bytes 14 i32.const -9 ref.i31 array.new_fixed $block 3)
  (global $const$$9 (;29;) (ref $block) i32.const 248 ref.i31 i32.const 83 i32.const 121 i32.const 115 i32.const 95 i32.const 98 i32.const 108 i32.const 111 i32.const 99 i32.const 107 i32.const 101 i32.const 100 i32.const 95 i32.const 105 i32.const 111 array.new_fixed $bytes 14 i32.const -10 ref.i31 array.new_fixed $block 3)
  (global $const$$10 (;30;) (ref $block) i32.const 248 ref.i31 i32.const 65 i32.const 115 i32.const 115 i32.const 101 i32.const 114 i32.const 116 i32.const 95 i32.const 102 i32.const 97 i32.const 105 i32.const 108 i32.const 117 i32.const 114 i32.const 101 array.new_fixed $bytes 14 i32.const -11 ref.i31 array.new_fixed $block 3)
  (global $const$$11 (;31;) (ref $block) i32.const 248 ref.i31 i32.const 85 i32.const 110 i32.const 100 i32.const 101 i32.const 102 i32.const 105 i32.const 110 i32.const 101 i32.const 100 i32.const 95 i32.const 114 i32.const 101 i32.const 99 i32.const 117 i32.const 114 i32.const 115 i32.const 105 i32.const 118 i32.const 101 i32.const 95 i32.const 109 i32.const 111 i32.const 100 i32.const 117 i32.const 108 i32.const 101 array.new_fixed $bytes 26 i32.const -12 ref.i31 array.new_fixed $block 3)
  (global $str_hello_from_wasm (;32;) (ref $bytes) i32.const 104 i32.const 101 i32.const 108 i32.const 108 i32.const 111 i32.const 32 i32.const 102 i32.const 114 i32.const 111 i32.const 109 i32.const 32 i32.const 119 i32.const 97 i32.const 115 i32.const 109 array.new_fixed $bytes 15)
  (global $flush_all (;33;) (ref $closure_last_arg) ref.func $flush_all struct.new $closure_last_arg)
  (global $str_Pervasives_do_at_exit (;34;) (ref $bytes) i32.const 80 i32.const 101 i32.const 114 i32.const 118 i32.const 97 i32.const 115 i32.const 105 i32.const 118 i32.const 101 i32.const 115 i32.const 46 i32.const 100 i32.const 111 i32.const 95 i32.const 97 i32.const 116 i32.const 95 i32.const 101 i32.const 120 i32.const 105 i32.const 116 array.new_fixed $bytes 21)
  (export "bytes_set" (func $bytes_set))
  (export "bytes_get" (func $bytes_get))
  (export "caml_buffer" (memory 0))
  (export "caml_extract_bytes" (func $caml_extract_bytes))
  (export "caml_handle_uncaught_exception" (func $caml_handle_uncaught_exception))
  (export "_initialize" (func $entry_point))
  (start $init)
  (elem (;0;) declare func $do_at_exit $reraise_exception $toplevel)
  (func $caml_register_global (;27;) (type 57) (param (ref i31) (ref $block))
    (local i32)
    local.get 0
    i31.get_u
    local.tee 2
    global.get $caml_global_data_254
    array.len
    i32.lt_u
    if ;; label = @1
      global.get $caml_global_data_254
      local.get 2
      local.get 1
      array.set $block
    end
  )
  (func $write_to_buffer (;28;) (type 33) (param (ref $bytes) i32 i32)
    (local i32)
    loop ;; label = @1
      local.get 2
      local.get 3
      i32.gt_u
      if ;; label = @2
        local.get 3
        local.get 0
        local.get 1
        local.get 3
        i32.add
        array.get_u $bytes
        i32.store8
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        br 1 (;@1;)
      end
    end
  )
  (func $read_from_buffer (;29;) (type 33) (param (ref $bytes) i32 i32)
    (local i32)
    loop ;; label = @1
      local.get 2
      local.get 3
      i32.gt_u
      if ;; label = @2
        local.get 0
        local.get 1
        local.get 3
        i32.add
        local.get 3
        i32.load8_u
        array.set $bytes
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        br 1 (;@1;)
      end
    end
  )
  (func $jsstring_of_bytes_629 (;30;) (type 58) (param (ref $bytes)) (result anyref)
    local.get 0
    local.get 0
    array.len
    return_call $jsstring_of_subbytes_629
  )
  (func $caml_named_value_818 (;31;) (type 59) (param (ref $bytes)) (result eqref)
    block ;; label = @1
      local.get 0
      global.get $named_value_table
      i32.const 0
      ref.i31
      local.get 0
      call $caml_string_hash
      i31.get_s
      i32.const 13
      i32.rem_u
      array.get $assoc_array
      call $find_named_value
      br_on_null 0 (;@1;)
      struct.get $assoc 1
      return
    end
    ref.null none
  )
  (func $caml_flush_partial (;32;) (type 60) (param (ref $channel)) (result i32)
    (local i32 i32 i32 i64 (ref extern) (ref $fd_offset))
    local.get 0
    struct.get $channel $curr
    local.tee 1
    if ;; label = @1
      local.get 0
      struct.get $channel $buffer
      local.set 5
      local.get 0
      struct.get $channel $fd
      local.tee 3
      call $get_fd_offset
      local.tee 6
      struct.get $fd_offset $offset
      local.set 4
      try ;; label = @2
        local.get 6
        struct.get $fd_offset $seeked
        if (result i32) ;; label = @3
          local.get 3
          local.get 5
          i32.const 0
          local.get 1
          local.get 4
          call $write
        else
          local.get 3
          local.get 5
          i32.const 0
          local.get 1
          ref.null noextern
          call $write'
        end
        local.set 2
      catch $javascript_exception_2
        call $caml_handle_sys_error_880
      end
      local.get 6
      local.get 4
      local.get 2
      i64.extend_i32_u
      i64.add
      struct.set $fd_offset $offset
      local.get 1
      local.get 2
      i32.gt_u
      if ;; label = @2
        local.get 5
        i32.const 0
        local.get 2
        local.get 1
        call $ta_copy
      end
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      local.tee 1
      struct.set $channel $curr
    end
    local.get 1
    i32.eqz
  )
  (func $add_string (;33;) (type 61) (param (ref $buffer) (ref eq))
    (local i32 i32 (ref $bytes) (ref $bytes))
    local.get 0
    struct.get $buffer 0
    local.tee 3
    local.get 1
    ref.cast (ref $bytes)
    local.tee 5
    array.len
    local.tee 2
    i32.add
    local.get 0
    struct.get $buffer 1
    local.tee 4
    array.len
    i32.gt_u
    if ;; label = @1
      local.get 4
      array.len
      local.get 3
      i32.sub
      local.set 2
    end
    local.get 4
    local.get 3
    local.get 5
    i32.const 0
    local.get 2
    array.copy $bytes $bytes
    local.get 0
    local.get 2
    local.get 3
    i32.add
    struct.set $buffer 0
  )
  (func $find_named_value (;34;) (type 62) (param (ref $bytes) (ref null $assoc)) (result (ref null $assoc))
    (local (ref $assoc))
    loop (result (ref null $assoc)) ;; label = @1
      block (result (ref null $assoc)) ;; label = @2
        local.get 0
        local.get 1
        br_on_cast_fail 0 (;@2;) (ref null $assoc) (ref $assoc)
        local.tee 2
        struct.get $assoc 0
        call $caml_string_equal_847
        i31.get_u
        if (result (ref $assoc)) ;; label = @3
          local.get 2
        else
          local.get 2
          struct.get $assoc 2
          local.set 1
          br 2 (;@1;)
        end
      end
    end
  )
  (func $caml_string_of_jsstring_523 (;35;) (type 63) (param (ref eq)) (result (ref $bytes))
    local.get 0
    ref.cast (ref $js)
    struct.get $js 0
    return_call $bytes_of_jsstring_629
  )
  (func $caml_string_hash (;36;) (type 64) (param (ref i31) (ref $bytes)) (result (ref i31))
    (local i32)
    local.get 0
    i31.get_s
    local.get 1
    call $caml_hash_mix_string
    local.tee 2
    i32.const 16
    i32.shr_u
    local.get 2
    i32.xor
    i32.const -2048144789
    i32.mul
    local.tee 2
    i32.const 13
    i32.shr_u
    local.get 2
    i32.xor
    i32.const -1028477387
    i32.mul
    local.tee 2
    i32.const 16
    i32.shr_u
    local.get 2
    i32.xor
    i32.const 1073741823
    i32.and
    ref.i31
  )
  (func $caml_string_concat_847 (;37;) (type 65) (param (ref eq) (ref $bytes)) (result (ref $bytes))
    (local i32 i32 (ref $bytes) (ref $bytes))
    local.get 0
    ref.cast (ref $bytes)
    local.tee 5
    array.len
    local.tee 2
    local.get 1
    array.len
    local.tee 3
    i32.add
    array.new_default $bytes
    local.tee 4
    i32.const 0
    local.get 5
    i32.const 0
    local.get 2
    array.copy $bytes $bytes
    local.get 4
    local.get 2
    local.get 1
    i32.const 0
    local.get 3
    array.copy $bytes $bytes
    local.get 4
  )
  (func $caml_ml_open_descriptor_out (;38;) (type 66) (param (ref i31)) (result (ref $channel))
    (local (ref extern) (ref $channel) i64)
    i32.const 65536
    call $ta_new
    local.set 1
    global.get $next_id
    local.tee 3
    i64.const 1
    i64.add
    global.set $next_id
    global.get $channel_ops
    local.get 3
    local.get 0
    i31.get_u
    local.get 1
    local.get 1
    call $dv_make
    i32.const 0
    i32.const -1
    i32.const 65536
    i32.const 0
    struct.new $channel
    local.tee 2
    call $register_channel
    local.get 2
  )
  (func $caml_ml_flush (;39;) (type 25) (param (ref eq))
    (local (ref $channel))
    local.get 0
    ref.cast (ref $channel)
    local.tee 1
    struct.get $channel $fd
    i32.const -1
    i32.ne
    if ;; label = @1
      local.get 1
      call $caml_flush
    end
  )
  (func $caml_main (;40;) (type 67) (param (ref $func))
    (local (ref eq) (ref $closure))
    try ;; label = @1
      local.get 0
      call_ref $func
      drop
    catch $ocaml_exit_10
    catch $ocaml_exception_2
      local.set 1
      block ;; label = @2
        block ;; label = @3
          try ;; label = @4
            global.get $handle_uncaught_exception
            call $caml_named_value_818
            br_on_null 1 (;@3;)
            local.get 1
            i32.const 0
            ref.i31
            call $caml_callback_2
            drop
          catch $ocaml_exit_10
            return
          end
          br 1 (;@2;)
        end
        block ;; label = @3
          i32.const 0
          ref.i31
          global.get $do_at_exit
          call $caml_named_value_818
          br_on_null 0 (;@3;)
          ref.cast (ref $closure)
          local.tee 2
          local.get 2
          struct.get $closure 0
          call_ref $function_1
          drop
        end
        i32.const 2
        global.get $fatal_error
        local.get 1
        call $caml_format_exception
        i32.const 10
        array.new_fixed $bytes 1
        call $caml_string_concat_847
        call $caml_string_concat_847
        call $caml_jsstring_of_bytes
        struct.get $js 0
        call $write_818
      end
      i32.const 2
      call $exit
    end
  )
  (func $caml_jsstring_of_bytes (;41;) (type 68) (param (ref $bytes)) (result (ref $js))
    local.get 0
    call $jsstring_of_bytes_629
    struct.new $js
  )
  (func $caml_flush_if_unbuffered (;42;) (type 25) (param (ref eq))
    (local (ref $channel))
    local.get 0
    ref.cast (ref $channel)
    local.tee 1
    struct.get $channel $unbuffered
    if ;; label = @1
      local.get 1
      call $caml_flush
    end
  )
  (func $caml_flush (;43;) (type 69) (param (ref $channel))
    loop ;; label = @1
      local.get 0
      call $caml_flush_partial
      i32.eqz
      br_if 0 (;@1;)
    end
  )
  (func $parse_int_format_419 (;44;) (type 70) (param (ref $bytes)) (result i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    i32.const 1
    local.set 1
    block ;; label = @1
      block ;; label = @2
        local.get 0
        array.len
        local.tee 3
        i32.const 2
        i32.lt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        array.get_u $bytes
        i32.const 37
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 1
        array.get_u $bytes
        local.tee 2
        i32.const 43
        i32.eq
        if ;; label = @3
          i32.const 1
          local.set 4
          i32.const 2
          local.set 1
        end
        local.get 2
        i32.const 32
        i32.eq
        if ;; label = @3
          i32.const 2
          local.set 4
          local.get 1
          i32.const 1
          i32.add
          local.set 1
        end
        local.get 2
        i32.const 35
        i32.eq
        if ;; label = @3
          i32.const 1
          local.set 5
          local.get 1
          i32.const 1
          i32.add
          local.set 1
        end
        local.get 1
        local.get 3
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        array.get_u $bytes
        local.tee 2
        i32.const 76
        i32.eq
        local.get 2
        i32.const 108
        i32.eq
        i32.or
        local.get 2
        i32.const 110
        i32.eq
        i32.or
        if ;; label = @3
          local.get 3
          local.get 1
          i32.const 1
          i32.add
          local.tee 1
          i32.eq
          br_if 1 (;@2;)
          local.get 0
          local.get 1
          array.get_u $bytes
          local.set 2
        end
        local.get 1
        i32.const 1
        i32.add
        local.get 3
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        i32.const 100
        i32.eq
        local.get 2
        i32.const 105
        i32.eq
        i32.or
        if (result i32) ;; label = @3
          i32.const 1
          local.set 6
          i32.const 10
        else
          local.get 2
          i32.const 117
          i32.eq
          if (result i32) ;; label = @4
            i32.const 10
          else
            local.get 2
            i32.const 120
            i32.eq
            if (result i32) ;; label = @5
              i32.const 16
            else
              local.get 2
              i32.const 88
              i32.eq
              if (result i32) ;; label = @6
                i32.const 1
                local.set 7
                i32.const 16
              else
                local.get 2
                i32.const 111
                i32.eq
                if (result i32) ;; label = @7
                  i32.const 8
                else
                  br 5 (;@2;)
                end
              end
            end
          end
        end
        local.set 1
        br 1 (;@1;)
      end
      i32.const 0
      ref.i31
      global.get $caml_global_data_254
      i32.const 3
      array.get $block
      global.get $format_error_84
      array.new_fixed $block 3
      throw $ocaml_exception_2
    end
    local.get 4
    local.get 5
    local.get 6
    local.get 1
    local.get 7
  )
  (func $jsstring_of_subbytes_629 (;45;) (type 71) (param (ref $bytes) i32) (result anyref)
    (local i32 i32 i32 anyref)
    global.get $text_converters_available
    if ;; label = @1
      local.get 0
      i32.const 0
      local.get 1
      call $decodeStringFromUTF8Array
      any.convert_extern
      return
    end
    global.get $string_builtins_available
    local.get 1
    i32.const 32768
    i32.le_u
    i32.and
    if ;; label = @1
      block ;; label = @2
        loop ;; label = @3
          local.get 1
          local.get 2
          i32.gt_u
          if ;; label = @4
            local.get 0
            local.get 2
            array.get_u $bytes
            local.tee 3
            i32.const 128
            i32.ge_u
            br_if 2 (;@2;)
            global.get $buffer_99
            local.get 2
            local.get 3
            array.set $wstring
            local.get 2
            i32.const 1
            i32.add
            local.set 2
            br 1 (;@3;)
          end
        end
        global.get $buffer_99
        i32.const 0
        local.get 1
        call $fromCharCodeArray
        any.convert_extern
        return
      end
    end
    local.get 1
    i32.const 65536
    i32.le_u
    if ;; label = @1
      local.get 0
      i32.const 0
      local.get 1
      call $write_to_buffer
      local.get 1
      return_call $read_string
    end
    local.get 0
    i32.const 0
    i32.const 65536
    call $write_to_buffer
    i32.const 65536
    i32.const 1
    call $read_string_stream
    local.set 5
    loop ;; label = @1
      local.get 1
      i32.const 65536
      i32.sub
      local.tee 1
      i32.const 65536
      i32.gt_u
      local.set 2
      local.get 0
      local.get 4
      i32.const 65536
      i32.add
      local.tee 4
      i32.const 65536
      local.get 1
      local.get 2
      select
      local.tee 3
      call $write_to_buffer
      local.get 5
      local.get 3
      local.get 2
      call $read_string_stream
      call $append_string
      local.set 5
      local.get 2
      br_if 0 (;@1;)
    end
    local.get 5
  )
  (func $init (;46;) (type 26)
    i32.const 1
    array.new_default $bytes
    i32.const 0
    i32.const 1
    call $decodeStringFromUTF8Array
    i32.const 1
    array.new_fixed $bytes 1
    i32.const 0
    i32.const 1
    call $decodeStringFromUTF8Array
    call $compare_strings
    i32.const 0
    i32.ne
    global.set $text_converters_available
    i32.const 1
    array.new_default $wstring
    i32.const 0
    i32.const 1
    call $fromCharCodeArray
    i32.const 1
    array.new_fixed $wstring 1
    i32.const 0
    i32.const 1
    call $fromCharCodeArray
    call $compare_strings
    i32.const 0
    i32.ne
    global.set $string_builtins_available
    global.get $text_converters_available
    i32.const 1
    global.get $string_builtins_available
    select
    i32.eqz
    if ;; label = @1
      i32.const 32768
      array.new_default $wstring
      global.set $buffer_99
    end
  )
  (func $get_fd_offsets (;47;) (type 30) (result (ref extern))
    (local (ref extern))
    global.get $fd_offsets
    ref.is_null
    if ;; label = @1
      call $map_new
      local.tee 0
      i32.const 0
      struct.new_default $fd_offset
      call $map_set
      local.get 0
      i32.const 1
      struct.new_default $fd_offset
      call $map_set
      local.get 0
      i32.const 2
      struct.new_default $fd_offset
      call $map_set
      local.get 0
      global.set $fd_offsets
    end
    global.get $fd_offsets
    ref.as_non_null
  )
  (func $get_fd_offset (;48;) (type 72) (param i32) (result (ref $fd_offset))
    (local (ref null $fd_offset))
    call $get_fd_offsets
    local.get 0
    call $map_get
    local.tee 1
    ref.is_null
    if ;; label = @1
      i32.const 0
      ref.i31
      global.get $caml_global_data_254
      i32.const 1
      array.get $block
      global.get $bad_file_descriptor
      array.new_fixed $block 3
      throw $ocaml_exception_2
    end
    local.get 1
    ref.as_non_null
  )
  (func $format_int_419 (;49;) (type 73) (param (ref $bytes) i32) (result (ref $bytes))
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 (ref $chars))
    local.get 0
    array.len
    i32.const 2
    i32.eq
    if ;; label = @1
      local.get 0
      i32.const 1
      array.get_u $bytes
      i32.const 100
      i32.eq
      if ;; label = @2
        local.get 1
        i32.const 0
        i32.lt_s
        if ;; label = @3
          i32.const 1
          local.set 4
          i32.const 1
          local.set 2
          i32.const 0
          local.get 1
          i32.sub
          local.set 1
        end
        local.get 1
        local.set 3
        loop ;; label = @3
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          local.get 3
          i32.const 10
          i32.div_u
          local.tee 3
          br_if 0 (;@3;)
        end
        local.get 2
        array.new_default $bytes
        local.set 0
        loop ;; label = @3
          local.get 0
          local.get 2
          i32.const 1
          i32.sub
          local.tee 2
          local.get 1
          i32.const 10
          i32.rem_u
          i32.const 48
          i32.add
          array.set $bytes
          local.get 1
          i32.const 10
          i32.div_u
          local.tee 1
          br_if 0 (;@3;)
        end
        local.get 4
        if ;; label = @3
          local.get 0
          i32.const 0
          i32.const 45
          array.set $bytes
        end
        local.get 0
        return
      end
    end
    local.get 0
    call $parse_int_format_419
    local.set 9
    local.set 8
    local.set 7
    local.set 6
    local.set 5
    local.get 7
    local.set 3
    local.get 8
    local.set 4
    local.get 6
    local.set 11
    local.get 5
    local.set 10
    local.get 1
    i32.const 0
    i32.lt_s
    if ;; label = @1
      local.get 3
      if (result i32) ;; label = @2
        i32.const 1
        local.set 12
        i32.const 0
        local.get 1
        i32.sub
      else
        local.get 1
        i32.const 2147483647
        i32.and
      end
      local.set 1
    end
    local.get 1
    local.set 3
    loop ;; label = @1
      local.get 2
      i32.const 1
      i32.add
      local.set 2
      local.get 3
      local.get 4
      i32.div_u
      local.tee 3
      br_if 0 (;@1;)
    end
    local.get 2
    i32.const 1
    i32.add
    local.get 2
    local.get 10
    local.get 12
    i32.or
    select
    local.set 2
    local.get 11
    i32.const 0
    local.get 1
    select
    if ;; label = @1
      local.get 2
      i32.const 2
      i32.add
      local.get 2
      local.get 4
      i32.const 16
      i32.eq
      select
      local.tee 3
      i32.const 1
      i32.add
      local.get 3
      local.get 4
      i32.const 8
      i32.eq
      select
      local.set 2
    end
    global.get $uppercase_hex_table_84
    global.get $lowercase_hex_table_84
    local.get 9
    local.tee 3
    select (result (ref $chars))
    local.set 13
    local.get 2
    array.new_default $bytes
    local.set 0
    loop ;; label = @1
      local.get 0
      local.get 2
      i32.const 1
      i32.sub
      local.tee 2
      local.get 13
      local.get 1
      local.get 4
      i32.rem_u
      array.get_u $chars
      array.set $bytes
      local.get 1
      local.get 4
      i32.div_u
      local.tee 1
      br_if 0 (;@1;)
    end
    local.get 12
    if ;; label = @1
      local.get 0
      i32.const 0
      i32.const 45
      array.set $bytes
    else
      local.get 10
      if ;; label = @2
        local.get 10
        i32.const 1
        i32.eq
        if ;; label = @3
          local.get 0
          i32.const 0
          i32.const 43
          array.set $bytes
        else
          local.get 0
          i32.const 0
          i32.const 32
          array.set $bytes
        end
      end
    end
    local.get 11
    i32.const 0
    local.get 2
    select
    if ;; label = @1
      local.get 0
      i32.const 0
      i32.const 48
      array.set $bytes
      local.get 4
      i32.const 16
      i32.eq
      if ;; label = @2
        local.get 0
        i32.const 1
        i32.const 88
        i32.const 120
        local.get 3
        select
        array.set $bytes
      end
    end
    local.get 0
  )
  (func $entry_point (;50;) (type 26)
    ref.func $toplevel
    call $caml_main
  )
  (func $do_at_exit (;51;) (type $function_1) (param (ref eq) (ref eq)) (result (ref eq))
    i32.const 0
    ref.i31
    local.get 1
    ref.cast (ref $env_1_0)
    struct.get $env_1_0 1
    call $caml_atomic_load
    local.tee 0
    local.get 0
    ref.cast (ref $closure)
    struct.get $closure 0
    return_call_ref $function_1
  )
  (func $caml_wrap_exception_523 (;52;) (type 74) (param externref) (result (ref $block))
    (local anyref)
    local.get 0
    any.convert_extern
    local.set 1
    block ;; label = @1
      i32.const 0
      ref.i31
      global.get $jsError
      call $caml_named_value_818
      br_on_null 0 (;@1;)
      block (result (ref eq)) ;; label = @2
        local.get 1
        br_on_cast 0 (;@2;) anyref (ref eq)
        struct.new $js
      end
      array.new_fixed $block 3
      return
    end
    i32.const 0
    ref.i31
    global.get $caml_global_data_254
    i32.const 2
    array.get $block
    block (result (ref eq)) ;; label = @1
      local.get 1
      block (result anyref) ;; label = @2
        global.get $toString
        call $caml_jsstring_of_bytes
        br_on_cast_fail 0 (;@2;) (ref $js) (ref $js)
        struct.get $js 0
      end
      i32.const 0
      call $new_array
      any.convert_extern
      call $meth_call
      br_on_cast 0 (;@1;) anyref (ref eq)
      struct.new $js
    end
    call $caml_string_of_jsstring_523
    array.new_fixed $block 3
  )
  (func $caml_string_equal_847 (;53;) (type 75) (param (ref $bytes) (ref $bytes)) (result (ref i31))
    (local i32 i32)
    local.get 0
    local.get 1
    ref.eq
    if ;; label = @1
      i32.const 1
      ref.i31
      return
    end
    local.get 0
    array.len
    local.tee 3
    local.get 1
    array.len
    i32.ne
    if ;; label = @1
      i32.const 0
      ref.i31
      return
    end
    loop ;; label = @1
      local.get 2
      local.get 3
      i32.lt_s
      if ;; label = @2
        local.get 0
        local.get 2
        array.get_u $bytes
        local.get 1
        local.get 2
        array.get_u $bytes
        i32.ne
        if ;; label = @3
          i32.const 0
          ref.i31
          return
        end
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    i32.const 1
    ref.i31
  )
  (func $caml_register_named_value (;54;) (type 76) (param (ref $env_1_0))
    (local (ref null $bytes) (ref null $bytes) (ref null $assoc) i32)
    block ;; label = @1
      global.get $str_Pervasives_do_at_exit
      local.tee 1
      ref.as_non_null
      local.tee 2
      ref.as_non_null
      global.get $named_value_table
      i32.const 0
      ref.i31
      local.get 2
      ref.as_non_null
      call $caml_string_hash
      i31.get_s
      i32.const 13
      i32.rem_u
      local.tee 4
      array.get $assoc_array
      local.tee 3
      call $find_named_value
      br_on_null 0 (;@1;)
      local.get 0
      struct.set $assoc 1
      return
    end
    global.get $named_value_table
    local.get 4
    local.get 2
    ref.as_non_null
    ref.as_non_null
    local.get 0
    local.get 3
    struct.new $assoc
    array.set $assoc_array
  )
  (func $caml_putch (;55;) (type 77) (param (ref $channel) i32)
    (local i32)
    local.get 0
    struct.get $channel $curr
    local.get 0
    struct.get $channel $size
    i32.ge_u
    if ;; label = @1
      local.get 0
      call $caml_flush_partial
      drop
    end
    local.get 0
    struct.get $channel $buffer_view
    local.get 0
    struct.get $channel $curr
    local.tee 2
    local.get 1
    call $dv_set_i8
    local.get 0
    local.get 2
    i32.const 1
    i32.add
    struct.set $channel $curr
  )
  (func $caml_putblock (;56;) (type 78) (param (ref $channel) (ref $bytes) i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    struct.get $channel $size
    local.get 0
    struct.get $channel $curr
    local.tee 4
    i32.sub
    local.tee 5
    local.get 3
    i32.le_u
    if ;; label = @1
      local.get 5
      local.set 3
    end
    local.get 1
    local.get 2
    local.get 0
    struct.get $channel $buffer
    local.get 4
    local.get 3
    call $ta_blit_from_bytes
    local.get 0
    local.get 3
    local.get 4
    i32.add
    struct.set $channel $curr
    local.get 3
    local.get 5
    i32.ge_u
    if ;; label = @1
      local.get 0
      call $caml_flush_partial
      drop
    end
    local.get 3
  )
  (func $caml_ml_output_char (;57;) (type 79) (param (ref eq) (ref i31))
    (local (ref $channel))
    local.get 0
    ref.cast (ref $channel)
    local.tee 2
    local.get 1
    i31.get_u
    call $caml_putch
    local.get 2
    call $caml_flush_if_unbuffered
  )
  (func $caml_ml_output (;58;) (type 80) (param (ref eq) (ref i31) (ref i31))
    (local i32 i32 i32 (ref $bytes))
    global.get $str_hello_from_wasm
    local.set 6
    local.get 1
    i31.get_u
    local.set 4
    local.get 2
    i31.get_u
    local.set 3
    loop ;; label = @1
      local.get 3
      if ;; label = @2
        local.get 0
        ref.cast (ref $channel)
        local.get 6
        local.get 4
        local.get 3
        call $caml_putblock
        local.tee 5
        local.get 4
        i32.add
        local.set 4
        local.get 3
        local.get 5
        i32.sub
        local.set 3
        br 1 (;@1;)
      end
    end
    local.get 0
    call $caml_flush_if_unbuffered
  )
  (func $caml_ml_out_channels_list (;59;) (type $func) (result (ref eq))
    block (result (ref eq)) ;; label = @1
      call $channel_list
      br_on_cast 0 (;@1;) anyref (ref eq)
      struct.new $js
    end
    return_call $caml_list_of_js_array_523
  )
  (func $caml_ml_open_descriptor_in (;60;) (type 26)
    (local (ref extern))
    i32.const 65536
    call $ta_new
    local.set 0
    global.get $next_id
    i64.const 1
    i64.add
    global.set $next_id
    local.get 0
    call $dv_make
    drop
  )
  (func $caml_list_of_js_array_523 (;61;) (type $dup) (param (ref eq)) (result (ref eq))
    (local i32 i32 (ref extern))
    block (result anyref) ;; label = @1
      local.get 0
      br_on_cast_fail 0 (;@1;) (ref eq) (ref $js)
      struct.get $js 0
    end
    extern.convert_any
    ref.as_non_null
    local.tee 3
    call $array_length
    local.set 2
    i32.const 0
    ref.i31
    local.set 0
    loop ;; label = @1
      local.get 1
      local.get 2
      i32.lt_u
      if ;; label = @2
        i32.const 0
        ref.i31
        block (result (ref eq)) ;; label = @3
          local.get 3
          local.get 1
          call $array_get
          br_on_cast 0 (;@3;) anyref (ref eq)
          struct.new $js
        end
        local.get 0
        array.new_fixed $block 3
        local.set 0
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 1 (;@1;)
      end
    end
    local.get 0
  )
  (func $caml_jsbytes_of_bytes (;62;) (type 81) (result (ref $js))
    (local i32 i32 i32 (ref $bytes) (ref $bytes))
    global.get $toString_272
    local.set 4
    loop ;; label = @1
      local.get 1
      i32.const 8
      i32.lt_u
      if ;; label = @2
        local.get 0
        i32.const 1
        i32.add
        local.get 0
        local.get 4
        local.get 1
        array.get_u $bytes
        i32.const 128
        i32.ge_u
        select
        local.set 0
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.eqz
    if ;; label = @1
      local.get 4
      call $jsstring_of_bytes_629
      struct.new $js
      return
    end
    local.get 0
    local.get 1
    i32.add
    array.new_default $bytes
    local.set 3
    i32.const 0
    local.set 1
    i32.const 0
    local.set 0
    loop ;; label = @1
      local.get 1
      i32.const 8
      i32.lt_u
      if ;; label = @2
        local.get 4
        local.get 1
        array.get_u $bytes
        local.tee 2
        i32.const 128
        i32.lt_u
        if (result i32) ;; label = @3
          local.get 3
          local.get 0
          local.get 2
          array.set $bytes
          local.get 0
          i32.const 1
          i32.add
        else
          local.get 3
          local.get 0
          local.get 2
          i32.const 6
          i32.shr_u
          i32.const 192
          i32.or
          array.set $bytes
          local.get 3
          local.get 0
          i32.const 1
          i32.add
          local.get 2
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          array.set $bytes
          local.get 0
          i32.const 2
          i32.add
        end
        local.set 0
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 1 (;@1;)
      end
    end
    local.get 3
    call $jsstring_of_bytes_629
    struct.new $js
  )
  (func $caml_js_meth_call (;63;) (type 82) (param (ref eq) (ref $block)) (result (ref eq))
    (local (ref eq))
    call $caml_jsbytes_of_bytes
    local.set 2
    block (result (ref eq)) ;; label = @1
      block (result anyref) ;; label = @2
        local.get 0
        br_on_cast_fail 0 (;@2;) (ref eq) (ref $js)
        struct.get $js 0
      end
      block (result anyref) ;; label = @2
        local.get 2
        br_on_cast_fail 0 (;@2;) (ref eq) (ref $js)
        struct.get $js 0
      end
      local.get 1
      call $caml_js_from_array
      struct.get $js 0
      call $meth_call
      br_on_cast 0 (;@1;) anyref (ref eq)
      struct.new $js
    end
  )
  (func $caml_js_from_array (;64;) (type 83) (param (ref $block)) (result (ref $js))
    (local i32 i32 (ref extern))
    local.get 0
    array.len
    i32.const 1
    i32.sub
    local.tee 2
    call $new_array
    local.set 3
    loop ;; label = @1
      local.get 1
      local.get 2
      i32.lt_u
      if ;; label = @2
        local.get 3
        local.get 1
        block (result anyref) ;; label = @3
          local.get 0
          local.get 1
          i32.const 1
          i32.add
          local.tee 1
          array.get $block
          br_on_cast_fail 0 (;@3;) (ref eq) (ref $js)
          struct.get $js 0
        end
        call $array_set
        br 1 (;@1;)
      end
    end
    local.get 3
    any.convert_extern
    struct.new $js
    return
  )
  (func $caml_hash_mix_string (;65;) (type 84) (param i32 (ref $bytes)) (result i32)
    (local i32 i32 i32)
    local.get 1
    array.len
    local.set 4
    loop ;; label = @1
      local.get 2
      i32.const 4
      i32.add
      local.tee 3
      local.get 4
      i32.le_u
      if ;; label = @2
        local.get 1
        local.get 2
        i32.const 1
        i32.add
        array.get_u $bytes
        i32.const 8
        i32.shl
        local.get 1
        local.get 2
        array.get_u $bytes
        i32.or
        local.get 1
        local.get 2
        i32.const 2
        i32.add
        array.get_u $bytes
        i32.const 16
        i32.shl
        local.get 1
        local.get 2
        i32.const 3
        i32.add
        array.get_u $bytes
        i32.const 24
        i32.shl
        i32.or
        i32.or
        i32.const -862048943
        i32.mul
        i32.const 15
        i32.rotl
        i32.const 461845907
        i32.mul
        local.get 0
        i32.xor
        i32.const 13
        i32.rotl
        i32.const 5
        i32.mul
        i32.const 430675100
        i32.sub
        local.set 0
        local.get 3
        local.set 2
        br 1 (;@1;)
      end
    end
    i32.const 0
    local.set 3
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 4
            i32.const 3
            i32.and
            br_table 3 (;@1;) 2 (;@2;) 1 (;@3;) 0 (;@4;)
          end
          local.get 1
          local.get 2
          i32.const 2
          i32.add
          array.get_u $bytes
          i32.const 16
          i32.shl
          local.set 3
        end
        local.get 3
        local.get 1
        local.get 2
        i32.const 1
        i32.add
        array.get_u $bytes
        i32.const 8
        i32.shl
        i32.or
        local.set 3
      end
      local.get 3
      local.get 1
      local.get 2
      array.get_u $bytes
      i32.or
      i32.const -862048943
      i32.mul
      i32.const 15
      i32.rotl
      i32.const 461845907
      i32.mul
      local.get 0
      i32.xor
      i32.const 13
      i32.rotl
      i32.const 5
      i32.mul
      i32.const 430675100
      i32.sub
      local.set 0
    end
    local.get 0
    local.get 4
    i32.xor
  )
  (func $caml_handle_uncaught_exception (;66;) (type 27) (param externref)
    local.get 0
    global.set $uncaught_exception
    ref.func $reraise_exception
    call $caml_main
  )
  (func $caml_handle_sys_error_880 (;67;) (type 27) (param externref)
    (local (ref i31) (ref eq))
    block (result (ref eq)) ;; label = @1
      local.get 0
      any.convert_extern
      br_on_cast 0 (;@1;) anyref (ref eq)
      struct.new $js
    end
    i32.const 0
    ref.i31
    local.tee 1
    array.new_fixed $block 1
    call $caml_js_meth_call
    call $caml_string_of_jsstring_523
    local.set 2
    local.get 1
    global.get $caml_global_data_254
    i32.const 1
    array.get $block
    local.get 2
    array.new_fixed $block 3
    throw $ocaml_exception_2
  )
  (func $caml_format_int (;68;) (type 85) (param (ref $bytes) (ref i31)) (result (ref $bytes))
    local.get 0
    local.get 1
    i31.get_s
    return_call $format_int_419
  )
  (func $caml_format_exception (;69;) (type $dup) (param (ref eq)) (result (ref eq))
    (local (ref $buffer) (ref $bytes) (ref $block) (ref $block) (ref i31) i32 i32 i32)
    local.get 0
    ref.cast (ref $block)
    local.tee 3
    i32.const 0
    array.get $block
    i32.const 0
    ref.i31
    local.tee 5
    ref.eq
    if (result (ref eq)) ;; label = @1
      i32.const 0
      i32.const 256
      array.new_default $bytes
      struct.new $buffer
      local.tee 1
      local.get 3
      i32.const 1
      array.get $block
      ref.cast (ref $block)
      i32.const 1
      array.get $block
      call $add_string
      block (result (ref $block)) ;; label = @2
        block ;; label = @3
          local.get 3
          array.len
          i32.const 3
          i32.ne
          br_if 0 (;@3;)
          local.get 3
          i32.const 1
          array.get $block
          local.tee 0
          global.get $caml_global_data_254
          i32.const 10
          array.get $block
          ref.eq
          local.get 0
          global.get $caml_global_data_254
          i32.const 11
          array.get $block
          ref.eq
          i32.or
          local.get 0
          global.get $caml_global_data_254
          i32.const 7
          array.get $block
          ref.eq
          i32.or
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.const 2
          array.get $block
          local.tee 0
          ref.test (ref $block)
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          ref.cast (ref $block)
          local.tee 4
          i32.const 0
          array.get $block
          local.get 5
          ref.eq
          i32.eqz
          br_if 0 (;@3;)
          i32.const 1
          local.set 7
          local.get 4
          br 1 (;@2;)
        end
        i32.const 2
        local.set 7
        local.get 3
      end
      local.tee 3
      array.len
      local.set 8
      local.get 7
      local.get 8
      i32.lt_u
      if ;; label = @2
        local.get 1
        struct.get $buffer 0
        local.tee 6
        local.get 1
        struct.get $buffer 1
        local.tee 2
        array.len
        i32.lt_u
        if ;; label = @3
          local.get 2
          local.get 6
          i32.const 40
          array.set $bytes
          local.get 1
          local.get 6
          i32.const 1
          i32.add
          struct.set $buffer 0
        end
        loop ;; label = @3
          local.get 3
          local.get 7
          array.get $block
          local.tee 0
          ref.test (ref i31)
          if ;; label = @4
            local.get 1
            i32.const 37
            i32.const 100
            array.new_fixed $bytes 2
            local.get 0
            ref.cast (ref i31)
            call $caml_format_int
            call $add_string
          else
            local.get 0
            ref.test (ref $bytes)
            if ;; label = @5
              local.get 1
              struct.get $buffer 0
              local.tee 6
              local.get 1
              struct.get $buffer 1
              local.tee 2
              array.len
              i32.lt_u
              if ;; label = @6
                local.get 2
                local.get 6
                i32.const 34
                array.set $bytes
                local.get 1
                local.get 6
                i32.const 1
                i32.add
                struct.set $buffer 0
              end
              local.get 1
              local.get 0
              call $add_string
              local.get 1
              struct.get $buffer 0
              local.tee 6
              local.get 1
              struct.get $buffer 1
              local.tee 2
              array.len
              i32.lt_u
              if ;; label = @6
                local.get 2
                local.get 6
                i32.const 34
                array.set $bytes
                local.get 1
                local.get 6
                i32.const 1
                i32.add
                struct.set $buffer 0
              end
            else
              local.get 1
              struct.get $buffer 0
              local.tee 6
              local.get 1
              struct.get $buffer 1
              local.tee 2
              array.len
              i32.lt_u
              if ;; label = @6
                local.get 2
                local.get 6
                i32.const 95
                array.set $bytes
                local.get 1
                local.get 6
                i32.const 1
                i32.add
                struct.set $buffer 0
              end
            end
          end
          local.get 8
          local.get 7
          i32.const 1
          i32.add
          local.tee 7
          i32.gt_u
          if ;; label = @4
            local.get 1
            struct.get $buffer 0
            local.tee 6
            local.get 1
            struct.get $buffer 1
            local.tee 2
            array.len
            i32.lt_u
            if ;; label = @5
              local.get 2
              local.get 6
              i32.const 44
              array.set $bytes
              local.get 1
              local.get 6
              i32.const 1
              i32.add
              struct.set $buffer 0
            end
            local.get 1
            struct.get $buffer 0
            local.tee 6
            local.get 1
            struct.get $buffer 1
            local.tee 2
            array.len
            i32.lt_u
            if ;; label = @5
              local.get 2
              local.get 6
              i32.const 32
              array.set $bytes
              local.get 1
              local.get 6
              i32.const 1
              i32.add
              struct.set $buffer 0
            end
            br 1 (;@3;)
          end
        end
        local.get 1
        struct.get $buffer 0
        local.tee 7
        local.get 1
        struct.get $buffer 1
        local.tee 2
        array.len
        i32.lt_u
        if ;; label = @3
          local.get 2
          local.get 7
          i32.const 41
          array.set $bytes
          local.get 1
          local.get 7
          i32.const 1
          i32.add
          struct.set $buffer 0
        end
      end
      local.get 1
      struct.get $buffer 0
      local.tee 7
      array.new_default $bytes
      local.tee 2
      i32.const 0
      local.get 1
      struct.get $buffer 1
      i32.const 0
      local.get 7
      array.copy $bytes $bytes
      local.get 2
    else
      local.get 3
      i32.const 1
      array.get $block
    end
  )
  (func $caml_extract_bytes (;70;) (type 31) (param i32)
    (local (ref $bytes))
    local.get 0
    array.new_default $bytes
    local.tee 1
    i32.const 0
    local.get 0
    call $read_from_buffer
    local.get 1
    global.get $stack_99
    struct.new $stack_45
    global.set $stack_99
  )
  (func $caml_callback_2 (;71;) (type 86) (param (ref eq) (ref eq) (ref i31)) (result (ref eq))
    (local (ref $closure))
    block (result (ref eq)) ;; label = @1
      local.get 1
      local.get 2
      local.get 0
      local.get 0
      br_on_cast_fail 0 (;@1;) (ref eq) (ref $closure_2)
      struct.get $closure_2 1
      return_call_ref $function_2
    end
    drop
    local.get 2
    local.get 1
    local.get 0
    ref.cast (ref $closure)
    local.tee 3
    local.get 3
    struct.get $closure 0
    call_ref $function_1
    ref.cast (ref $closure)
    local.tee 3
    local.get 3
    struct.get $closure 0
    return_call_ref $function_1
  )
  (func $caml_atomic_load (;72;) (type 87) (param (ref $block)) (result (ref eq))
    local.get 0
    i32.const 1
    array.get $block
  )
  (func $bytes_set (;73;) (type 32) (param externref i32 i32)
    local.get 0
    any.convert_extern
    ref.cast (ref $bytes)
    local.get 1
    local.get 2
    array.set $bytes
  )
  (func $bytes_of_jsstring_629 (;74;) (type 88) (param anyref) (result (ref $bytes))
    (local (ref $stack_45) (ref $bytes) (ref $bytes) i32 i32)
    global.get $text_converters_available
    if ;; label = @1
      local.get 0
      extern.convert_any
      return_call $encodeStringToUTF8Array
    end
    block (result (ref $bytes)) ;; label = @1
      local.get 0
      call $write_string
      local.set 4
      global.get $stack_99
      ref.is_null
      if ;; label = @2
        local.get 4
        array.new_default $bytes
        local.tee 2
        i32.const 0
        local.get 4
        call $read_from_buffer
        local.get 2
        br 1 (;@1;)
      end
      block ;; label = @2
        global.get $stack_99
        br_on_null 0 (;@2;)
        local.set 1
        loop ;; label = @3
          local.get 5
          local.get 1
          struct.get $stack_45 $s
          array.len
          i32.add
          local.set 5
          local.get 1
          struct.get $stack_45 $next
          br_on_null 1 (;@2;)
          local.set 1
          br 0 (;@3;)
        end
        unreachable
      end
      local.get 4
      local.get 5
      i32.add
      array.new_default $bytes
      local.tee 2
      local.get 5
      local.get 4
      call $read_from_buffer
      block ;; label = @2
        global.get $stack_99
        br_on_null 0 (;@2;)
        local.set 1
        ref.null none
        global.set $stack_99
        loop ;; label = @3
          local.get 2
          local.get 5
          local.get 1
          struct.get $stack_45 $s
          local.tee 3
          array.len
          local.tee 4
          i32.sub
          local.tee 5
          local.get 3
          i32.const 0
          local.get 4
          array.copy $bytes $bytes
          local.get 1
          struct.get $stack_45 $next
          br_on_null 1 (;@2;)
          local.set 1
          br 0 (;@3;)
        end
        unreachable
      end
      local.get 2
    end
  )
  (func $bytes_get (;75;) (type 89) (param externref i32) (result i32)
    local.get 0
    any.convert_extern
    ref.cast (ref $bytes)
    local.get 1
    array.get_u $bytes
  )
  (func $toplevel (;76;) (type $func) (result (ref eq))
    (local (ref eq) (ref $env_1_0))
    i32.const 11
    ref.i31
    global.get $const$$11
    call $caml_register_global
    i32.const 10
    ref.i31
    global.get $const$$10
    call $caml_register_global
    i32.const 9
    ref.i31
    global.get $const$$9
    call $caml_register_global
    i32.const 8
    ref.i31
    global.get $const$$8
    call $caml_register_global
    i32.const 7
    ref.i31
    global.get $const$$7
    call $caml_register_global
    i32.const 6
    ref.i31
    global.get $const$$6
    call $caml_register_global
    i32.const 5
    ref.i31
    global.get $const$$5
    call $caml_register_global
    i32.const 4
    ref.i31
    global.get $const$$4
    call $caml_register_global
    i32.const 3
    ref.i31
    global.get $const$$3
    call $caml_register_global
    i32.const 2
    ref.i31
    global.get $const$$2
    call $caml_register_global
    i32.const 1
    ref.i31
    global.get $const$$1
    call $caml_register_global
    i32.const 0
    ref.i31
    global.get $const$
    call $caml_register_global
    call $caml_ml_open_descriptor_in
    i32.const 1
    ref.i31
    call $caml_ml_open_descriptor_out
    local.set 0
    i32.const 2
    ref.i31
    call $caml_ml_open_descriptor_out
    drop
    ref.func $do_at_exit
    i32.const 0
    ref.i31
    global.get $flush_all
    array.new_fixed $block 2
    struct.new $env_1_0
    local.tee 1
    call $caml_register_named_value
    local.get 0
    i32.const 0
    ref.i31
    i32.const 15
    ref.i31
    call $caml_ml_output
    local.get 0
    i32.const 10
    ref.i31
    call $caml_ml_output_char
    local.get 0
    call $caml_ml_flush
    i32.const 0
    ref.i31
    local.get 1
    call $do_at_exit
    drop
    i32.const 0
    ref.i31
  )
  (func $reraise_exception (;77;) (type $func) (result (ref eq))
    global.get $uncaught_exception
    throw $javascript_exception_2
  )
  (func $flush_all (;78;) (type $function_1) (param (ref eq) (ref eq)) (result (ref eq))
    (local (ref $block))
    call $caml_ml_out_channels_list
    local.set 0
    loop (result (ref i31)) ;; label = @1
      local.get 0
      i32.const 0
      ref.i31
      ref.eq
      if (result (ref i31)) ;; label = @2
        i32.const 0
        ref.i31
      else
        local.get 0
        ref.cast (ref $block)
        local.tee 2
        i32.const 2
        array.get $block
        local.set 0
        block (result (ref eq)) ;; label = @3
          block (result externref) ;; label = @4
            try ;; label = @5
              local.get 2
              i32.const 1
              array.get $block
              call $caml_ml_flush
              br 4 (;@1;)
            catch $ocaml_exception_2
              br 2 (;@3;)
            catch $javascript_exception_2
              br 1 (;@4;)
            end
            unreachable
          end
          call $caml_wrap_exception_523
        end
        local.tee 1
        ref.cast (ref $block)
        i32.const 1
        array.get $block
        global.get $const$$1
        ref.eq
        br_if 1 (;@1;)
        local.get 1
        throw $ocaml_exception_2
      end
    end
  )
  (func $custom_hash_id (;79;) (type $hash) (param (ref eq)) (result i32)
    local.get 0
    ref.cast (ref $custom_with_id)
    struct.get $custom_with_id $id
    i32.wrap_i64
  )
  (func $custom_compare_id (;80;) (type $compare) (param (ref eq) (ref eq) i32) (result i32)
    (local i64 i64)
    local.get 0
    ref.cast (ref $custom_with_id)
    struct.get $custom_with_id $id
    local.tee 3
    local.get 1
    ref.cast (ref $custom_with_id)
    struct.get $custom_with_id $id
    local.tee 4
    i64.gt_s
    local.get 3
    local.get 4
    i64.lt_s
    i32.sub
  )
  (@custom "sourceMappingURL" (after code) "\22code-3c200acaab75567db6d9.wasm.map")
)
