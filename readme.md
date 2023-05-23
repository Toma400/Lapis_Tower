# Lapis
Lapis is multilingual mini-library directed at four languages: Odin, Nim, Ruby and Go.
It is made purely out of necessity of simplifying some basic features that are
missing in those languages, or are made in a way that makes them annoying.

### How to use Lapis
Lapis is not the same for all languages, as it is made to supply them with
language-specific set of tools that were not available at the time.

Therefore, you can look at the table to see features Lapis adds:

<table width=100%>
  <tr>
    <th width=10%><center> Language    </center></th>
    <th width=30%><center> Features    </center></th>
    <th><center> Description </center></th>
  </tr>
  <tr id="Odin">
    <td align="center" rowspan=2> Odin </td>
    <td> ✤ gets (?str) </td>
    <td> ✤ Python-like input, returning string value </td></tr><tr>
    <td> ✤ puts (?str) </td>
    <td> ✤ Terminal output</td>
  </tr>
  <tr id="Go">
    <td align="center" rowspan=3> Go </td>
    <td> ✤ Gets ( ) </td>
    <td> ✤ Pure input, without print provided </td></tr><tr>
    <td> ✤ Getsb (str) </td>
    <td> ✤ Python-like input, returning string value </td></tr><tr>
    <td> ✤ Puts (str) </td>
    <td> ✤ Terminal output from string </td>
  </tr>
  <tr>
    <td align="center" rowspan=3> Nim </td>
    <td> ✤ conc (OrderedTable<br> 　　　　[int, string] ) </td>
    <td> ✤ Returns string from given string table </td></tr><tr>
    <td> ✤ ti (str) </td>
    <td> ✤ Shortcut conversion of string to int </td></tr><tr>
    <td> ✤ ts (int) </td>
    <td> ✤ Shortcut conversion of int to string </td>
  </tr>
  <tr>
    <td align="center" rowspan=1> Ruby </td>
    <td> ✤ gets! (?str) </td>
    <td> ✤ Updated <code>gets</code> which prints given optional string </td>
  </tr>
  <tr>
    <td align="center" rownspan=1> Zig </td>
    <td align="center"> TBA </td>
    <td align="center"> TBA </td>
  </tr>
</table>

---
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
---
#### Nim
To use library in Nim, add simple import call on top (example assume that you
use Lapis in the same directory as your main .nim file):
```Nim
import lapis

var some_int = 5
var some_tb = {1: "Here I see ", 2: ts(some_int), 3: " monsters!"}.toOrderedTable

echo conc(some_tb)
```

---
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
---
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
