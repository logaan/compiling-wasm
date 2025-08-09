This is the most interesting part. The wit that looks like this:

    export take: func(message: maybe-u8);

Becomes rust that looks like this:

    pub unsafe fn _export_take_cabi<T: Guest>(arg0: i32, arg1: i32) {

So the wit function that takes 1 argument is turning into a rust function that takes 2. And the variant is split across those arguments. `arg0` is the descriminator field and `arg1` is the value stored inside `Some(u8)`.
