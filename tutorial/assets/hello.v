#flag -I. -L. -lhello
#include "hello.h" 

fn C.Hello_GetMessage() &char

fn main() {
    println("Hello from V!")
    s := unsafe { cstring_to_vstring(&char(C.Hello_GetMessage())) }
    println(s)
}
