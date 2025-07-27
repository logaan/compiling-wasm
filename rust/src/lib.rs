#[allow(warnings)]
mod bindings;

use bindings::Guest;

struct Component;

enum WasmTypes {
    U8(u8),
    U16(u16),
    U32(u32),
    U64(u64),
    S8(i8),
    S16(i16),
    S32(i32),
    S64(i64),
    F32(f32),
    F64(f64),
    Char(char),
    Bool(bool),
    Str(String),
    // TODO
    Tuple,
    // TODO
    List,
    // TODO
    Option,
    // TODO
    Result,
    // TODO
    // Also what is this?
    Handle,
    // TODO
    // Also what is this?
    Future,
    // TODO
    // Also what is this?
    Stream,
    // TODO
    // Also what is this?
    Id,
}

impl Guest for Component {
    /// Say hello!
    fn hello_world() -> String {
        "Hello, World!".to_string()
    }
}

bindings::export!(Component with_types_in bindings);
