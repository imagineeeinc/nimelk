# Nimelk
A simple JavaScript runtime using the small elk runtime for microcontrollers.

```shell
# Git submoulde elk
git submodule init
git submoudle update

# Install nimterop
nimble install nimterop -y

# Generate Nim bindings of elk
nim c -r elk_wrraper.nim

# Test out
nimble run
```