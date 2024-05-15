import elk

proc js_print(js: ptr js, args: ptr jsval_t, nargs: cint): jsval_t {.cdecl procvar.}=
  let val: jsval_t = args[]
  echo js_str(js, val)
  return js_mkundef()

proc initRuntime*(code: string): cstring =
  var mem: array[2048, char]
  var js = js_create(mem.addr, uint(sizeof(mem)))
  js_set(js, js_glob(js), "print", js_mkfun(js_print));
  var v: jsval_t = js_eval(js, code, uint(len(code)))
  return "OK: " & $(js_str(js, v))