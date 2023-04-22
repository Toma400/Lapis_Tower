# Lapis
Lapis is multilingual mini-library directed at three languages: Odin, Ruby and Go.
It is made purely out of necessity of simplifying some basic features that are
missing in those languages, or are made in a way that makes them annoying.

### How to use Lapis
Lapis is not the same for all languages, as it is made to supply them with
language-specific set of tools that were not available at the time.

Therefore, you can look at the table to see features Lapis adds:

| Language | Features                      | Description                                                                  |
|:--------:| ----------------------------- | ---------------------------------------------------------------------------- |
|   Odin   | ✤ gets (?str)<br>✤ puts (str) | ✤ Python-like input, returning string value<br>✤ Terminal output from string |
|    Go    | ✤ Gets ( )<br>✤ Getsb (str)<br>✤ Puts (str) | ✤ Pure input, without print provided<br>✤ Python-like input, returning string value<br>✤ Terminal output from string |
|   Ruby   | ✤ gets! (?str)                | ✤ Updated `gets` which prints given optional string                          |
|   Zig    | TBA                           | TBA                                                                          |

#### Odin
Write following import on top of everything:
```Odin
import "lapis"
```
then, in scope you want to use Lapis functionalities, write scope importing:
```Odin
using lapis
```
Now, you are able to use all features from the library. To showcase that,
here is short example which prints code inputted by user:
```Odin
package main

import "lapis"

main :: proc() {
    using lapis
    sth := lapis.gets("Please provide text:")
    lapis.puts(sth)
}
```

#### Ruby
In Ruby, you can use this code on top of the file, which will direct Ruby to
the folder with `lapis.rb` file:
```Ruby
require_relative "lapis/lapis.rb"
```
However, if you want to bring the file out of the folder, to be neighbouring
to the script you write in, you can do that and slightly modify import statement:
```Ruby
require_relative "./lapis.rb"
```

#### Go
In Go, import statement are rather complicated. Assuming you put Lapis in folder,
so structure of the file looks like this:
```
project_dir
  |
  |--- lapis
  |      \--- lapis.go
  |
  \--- main.go
```
You need to write such import in `main.go`:
```Go
import (
  "test/lapis"
)
```
Where `test` is name of our `go.mod` package, so edit it accordingly. Then, we
can use Lapis functions as such:
```Go
lapis.Puts("Hello!")
a := lapis.Gets()
b := lapis.Getsb("Please provide some words: ")
```
Mind that Golang requests functions imported to be capitalised, so for it to work
properly you need to use them in such way.
