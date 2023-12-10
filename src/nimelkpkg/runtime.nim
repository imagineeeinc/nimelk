import os
import elk

proc initRuntime*() =
  var mem: array[200, char]
  var js = js_create(mem.addr, uint(sizeof(mem)))  # Create JS instance
  var v = js_eval(js, "2+4", uint(3))  # Execute JS code (js truct, code, length of code)
  echo "result: ", js_str(js, v)  # result: 6