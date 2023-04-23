# Python

Python itself is not a shell in a traditional sense.
It does ship with a shell like interpreter console.
The interpreter is only able to interpret Python and nothing else.

## Native Python

You can drop into the python interpreter console:

Just type `python` in your current shell (needs to be in `PATH`)

---

- Exit with ctrl+d or by typing exit()
- Clear screen with ctrl+l

```python
# Python within the interpreter console
msg = "Hello Summit 2023"

print(msg)
len(msg)

# Native utilities will not work!
ls -al
uname -a
```

## Xonsh

Xonsh is a shell that natively interprets Python as well as being able to 
execute native utilities (much like PowerShell).

Since `xonsh` isn't my default shell I will switch to it.

---

```python
# Native utilities still work!
glow python.md
ls -apl
uname -a

# Python interpreted in the shell
msg = "Hello from Xonsh Summit!"
print(msg)
len(msg)

# Leverage a Python module
import json
j = json.loads('{"Summit":2023}')
print(j)
print(j["Summit"])

# Execute the command in another Shell
pwsh -c "Get-ChildItem"
```

