import elk

proc js_print(js: ptr js, args: jsval_t, nargs: cint): jsval_t {.cdecl.} =
  var a: jsval_t = args
  echo a
  return js_mktrue().jsval_t

proc initRuntime*(code: string): cstring =
  var mem: array[2048, char]
  var js = js_create(mem.addr, uint(sizeof(mem)))
  #js_set(js, js_glob(js), "print", js_mkfun(js_print))
  var v: jsval_t = js_eval(js, code, uint(len(code)))
  return js_str(js, v)