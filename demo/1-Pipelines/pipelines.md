# Pipelines 

A.K.A - *A Tale of 2 Pipeline (Architectures)*

Fundamentally typical Linux/Unix shells that are POSIX compliant utilize STDIO byte/data streams.

> _"But Rob, what is POSIX??"_
Hold your horses we'll get to that right after this!

Shells that adhere to this byte stream pipeline architecture commonly include:

- sh (Bourne Shell)
- bash (Bourne Again Shell)
- zsh

Commonly utilities for Unix written in C leveraged STDIO / `stdio.h`.
This enabled 3 data streams:

- STDIN
- STDOUT
- STDERR

This is pretty neat-o since it allowed passing of data between utilities!

---

### Shell/Bash - Data/Byte Streams

This is a simple and typical pipeline in 

```bash
# Byte Stream Pipelining

# cat to read the contents of the file 'us_county_pop2022'
# grep the lines containing the string 'Massachusetts'
# sort the filtered lines on column 3 'POP', as a numerical value, descending
cat ./us_county_pop2022.csv | grep "Massachusetts" | sort -t',' -k3nr
```

---

## PowerShell - Structured .Net Objects

We can see the same process using PowerShell.

```bash
# Get the CSV data and de-serialize it into objects
$data = Import-Csv -Path ./us_county_pop2022.csv

# See how we are now working with objects?
# Even here we are piping those objects into 'Get-Random'
# Pulling a random object from the list to do a 'Get-Member'
$data | Get-Random
$data | Get-Random | Get-Member

# Getting the same output with PowerShell
$data | Where-Object {$_.STATE -eq 'Massachusetts'} | Sort-Object -Property {[int]$_.POP} -Descending

# Alternatively on Import-Csv I could have piped to Select-Object to run an expression to cast the POP as an int
# The nice thing is that because we are working with objects tasks like this become easier
$data = Import-Csv -Path ./us_county_pop2022.csv | Select-Object STATE, CITY, @{Name="POP";Expression={[int]$_.POP}}
```

---

*Note/Side Rant*: PowerShell is syntactically _verbose_.

No architecture is inherently right or wrong, this was a deliberate design choice for PowerShell
This design is detailed within Jeffery Snover's Monad manifesto!

- [Monad Manifesto](https://jsnover.com/Docs/MonadManifesto.pdf)
