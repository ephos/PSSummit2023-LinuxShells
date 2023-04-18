# POSIX

## POSIX Compliance

- POSIX is the ***P***ortable ***O***perating ***S***ystem ***I***nterface
  * Defined by the IEEE
  * [IEEE Std 1003.1-2017 (Revision of IEEE Std 1003.1-2008 and formally POSIX.2)](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18)
- A series of standards for Unix-like operating systems
  * Came from a time when multiple major variants of Unix were around
  * Defines common commands like `echo`, `test`, `expr`..
    + Also reserved words/keywords like `if`, `while`, `for`
- A baseline set of standards that would operate consistently on all Unix-like operating systems
- Defined standards for:
  * User level programs, services and utilities
  * Program level specifications for basic I/O, **terminal** and network operations

## POSIX Compliant and Non-Compliant Shells

The following scripts have a Shebang `#!` so they know what shell to be interpreted in.

From [Wikipedia](https://en.wikipedia.org/wiki/Shebang_(Unix)):

> When a text file with a shebang is used as if it is an executable in a Unix-like operating system,
> the program loader mechanism parses the rest of the file's initial line as an interpreter directive. 

The following files are all marked as executable with a **Shebang** / `#!` to the specified shell.

### POSIX Compliant

```bash
# POSIX Compliant Shells!

# The OG Bourne Shell
cat hello-sh
./hello-sh

# Ubiquitous
cat hello-bash
./hello-bash

# Default on MacOS
cat hello-zsh
./hello-zsh

# Does anyone actually use KornShell???
cat hello-ksh
./hello-ksh
```

The following scripts will execute with Non-POSIX compliant shells.

### Not POSIX Compliant

```bash
# Non-POSIX Compliant Shells

# Fish Shell
cat hello-fish
./hello-fish

# Good ol' PowerShell
cat hello-pwsh
./hello-pwsh
```

If PowerShell (or Fish) were to adhere to POSIX compliance standards, 
then the declaration of the variable would have worked.

Bonus: [Watch People Argue Over POSIX Compliance](https://news.ycombinator.com/item?id=26744919)
