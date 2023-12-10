let doc = """
Usage:
  nimelk run <file>

Options:
  -h --help     Show this screen.
  --version     Show version.
"""

import docopt
import "nimelkpkg/runtime"

when isMainModule:
  let args = docopt(doc, version = "0.1.0", help=true)
  if args["run"]:
    echo initRuntime(readFile($args["<file>"]))