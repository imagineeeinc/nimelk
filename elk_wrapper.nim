import nimterop/[build, cimport]

static:
  cDebug()
  cDisableCaching()

# Compile Elk library
cCompile("elk/elk.c")

# Generate Nim bindings
cImport("elk/elk.h", recurse=false, nimFile="src/nimelkpkg/elk.nim", flags="-E_ -F_")