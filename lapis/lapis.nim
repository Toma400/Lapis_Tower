import std/tables
import strutils

# allows for easy, table-driven concaternation of strings
proc conc* (cont: OrderedTable): string =
  var clean_table: seq[string] = @[]
  var ret_str: string = ""
  for i in cont.keys:
    if i.type() is int:
      clean_table.add(cont[i])
  for j in clean_table:
    ret_str.add(j)
  return ret_str

# shortened function name for 'intToStr'
proc ts* (i: int): string =
  return intToStr(i)

# shortened and error-handled name for 'parseInt'
# : using 'if ts(x) != nil is adviced to avoid bugs!
proc ti* (s: string): Option[int] =
  try:
    return parseInt(s)
  except:
    return nil
