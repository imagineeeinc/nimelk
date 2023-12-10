# Nimelk
A simple and *Super Bare* JavaScript runtime using the small [elk runtime for microcontrollers](https://github.com/cesanta/elk), using Nim.

### A quick why
I wanted to dip into some C programming and decided to connect a small C library to Nim. So I started by creating a c binding for the [elk](https://github.com/cesanta/elk) using [nimterop](https://github.com/nimterop/nimterop) fiddling around with the settings. Until something worked. Finally it worked and I slapped on a simple cli interface with [docopt](https://github.com/docopt/docopt.nim). This might not be the best js runtime as it [misses a lot of features](https://github.com/cesanta/elk?tab=readme-ov-file#not-supported-features) and thus writing js is a pain. So this project can be helpful to some people as it lays down the framework for embedding the elk runtime in Nim.

## Usage
Make sure to have `Nim` and `Git` installed.

### CLI
```shell
# Get repo
git clone https://github.com/imagineeeinc/nimelk.git

# Git submoulde elk
git submodule init
git submoudle update

# Install nimterop
nimble install nimterop -y

# Generate Nim bindings of elk
nim c -r elk_wrraper.nim

# Install deps
nimble install

# Test out
nimble run -- run tests/index.js
```

### JS Syntax
You have no console.logs or any form of input. So to output you only have one chance at the end of the file. With defining the output e.g.:
```js
let a = 1;
let b = 2;
let c = a + b;
a+b >= c ? true : false;
```
this should output true if `a+b` is greater than c. (which always is going to be).

Here are some of the features (and unsupported features) from the elk readme:
> - Supported
>   - Operations: all standard JS operations except:
>      - `!=`, `==`. Use strict comparison `!==`, `===`
>      - No computed member access `a[b]`
>      - No exponentiation operation `a ** b`
>   - Typeof: `typeof('a') === 'string'`
>   - For loop: `for (...;...;...)  ...`
>   - Conditional: `if (...) ... else ...`
>   - Ternary operator `a ? b : c`
>   - Simple types: `let a, b, c = 12.3, d = 'a', e = null, f = true, g = false;`
>   - Functions: `let f = function(x, y) { return x + y; };`
>   - Objects: `let obj = {f: function(x) { return x * 2}}; obj.f(3);`
>   - Every statement must end with a semicolon `;`
>   - Strings are binary data chunks, not Unicode strings: `'Київ'.length === 8`
> - Not supported
>   - No `var`, no `const`. Use `let` (strict mode only)
>   - No `do`, `switch`, `while`. Use `for`
>   - No `=>` functions. Use `let f = function(...) {...};`
>   - No arrays, closures, prototypes, `this`, `new`, `delete`
>   - No standard library: no `Date`, `Regexp`, `Function`, `String`, `Number`

## Resources
- [elk (js runtime)](https://github.com/cesanta/elk)
- [nimterop (Bindings generation)](https://github.com/nimterop/nimterop)
- [docopt (command line interface)](https://github.com/docopt/docopt.nim)

<p align="center">
  <a href="https://imagineee.web.app/">
    <img src="https://imagineeeinc.github.io/made-with-love-by-imagineee/made-with-love-orange.svg" alt="Made with love by imagineee" height="64px">
  </a>
</p>
