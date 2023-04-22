package lapis

import "bufio"
import "fmt"
import "os"

func Gets() string {
    read_input := bufio.NewReader(os.Stdin)
    itext, err := read_input.ReadString('\n')
    if err != nil {
        fmt.Println("An error occured. Please try again.", err)
        return ""
    }
    return itext
}

func Getsb(text string) string {
    fmt.Print(text)
    return Gets()
}

func Puts(text string) {
    fmt.Print(text)
}
