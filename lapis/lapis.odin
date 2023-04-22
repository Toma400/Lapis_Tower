package lapis

import "core:fmt"
import "core:os"

gets :: proc(text: string = "") -> string {
    buf: [256]byte
    if text != "" {
        fmt.print(text)
    }
    inp_text, err := os.read(os.stdin, buf[:])
    return string(buf[:inp_text])
}

puts :: proc(text: string = "") {
    if text != "" {
        fmt.println(text)
    }
}
