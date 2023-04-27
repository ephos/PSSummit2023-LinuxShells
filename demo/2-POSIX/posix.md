# POSIX

## POSIX Compliance

- POSIX is the ***P***ortable ***O***perating ***S***ystem ***I***nterface
  * Defined by the IEEE
  * Specific to the shell/terminal is **1003.1-2017**
  * [IEEE Std 1003.1-2017 (Revision of IEEE Std 1003.1-2008 and formally POSIX.2)](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18)
- A baseline set of standards that would operate consistently on all Unix-like operating systems
  * Defined standards for:
    + User level programs, services and utilities
      + Defines common commands like `echo`, `test`, `expr`..
    + Also reserved words/keywords like `if`, `while`, `for`
    + Program level specifications for basic I/O, **terminal** and network operations

- POSIX is effectively bare minimum standards

## POSIX Compliant and Non-Compliant Shells

- `dash` is strictly POSIX complaint
- `bash` is POSIX compliant but has functionality beyond POSIX compliance standards
  * Careful of 'bashisms', this functionality is not POSIX compliance (like use of `[[]]`)
  * `test` with `[]` = POSIX ✅
  * `test` with `[[]]` = Not POSIX ❌ 

### Quick Note on Shebang

The scripts below have a Shebang `#!` so they know what shell to be interpreted in.

From [Wikipedia](https://en.wikipedia.org/wiki/Shebang_(Unix)):

> When a text file with a shebang is used as if it is an executable in a Unix-like operating system,
> the program loader mechanism parses the rest of the file's initial line as an interpreter directive. 

---

## POSIX Compliance Test

```bash
# Bash
cat posix-bash
./posix-bash

# Dash / Debian Almquist Shell (Strict POSIX compliance)
cat posix-dash
./posix-dash

# Bourne Shell
cat posix-sh
./posix-sh
# Why did that work? Careful of symlinks
ls -a /usr/bin/sh 

# Our beloved PowerShell
cat posix-pwsh
./posix-pwsh
```

---

## For Fun

- *Bonus*: [Watch People Argue Over POSIX Compliance](https://news.ycombinator.com/item?id=26744919)
- There are shell compatibility checkers like [ShellCheck.net](https://www.shellcheck.net/)
