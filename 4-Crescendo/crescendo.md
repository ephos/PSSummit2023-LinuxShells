# PowerShell Crescendo

Crescendo:

- Don't overthink Crescendo and remember the 4 questions here!!!
- Well documented [schema](https://aka.ms/PowerShell/Crescendo/Schemas/2021-11)
  * Allows LSP autocomplete in your IDE of choice (NeoVim/VS Code)
- Contains some great examples
  * _/.local/share/powershell/Modules/Microsoft.PowerShell.Crescendo/1.0.0/Samples/_

## ls

```pwsh

```

## pacman

Pacman is the Arch Linux package manager.

Let's convert it to feel more PowerShell-y _(oh gosh why are we doing this?)_

```pwsh
# Within this dir we have the Crescendo file
# This one also accounts for pacman requiring root
Set-Location -Path ./pacman/

# Export the module based on our config file
Export-CrescendoModule -ConfigurationFile ./pacman.Crescendo.json -ModuleName pspacman

# Import the module
Import-Module ./pspacman.psd1 -Force 

# Run a pacman Update!
Invoke-PacmanUpdate -Sync -Upgrade -Refresh
```
