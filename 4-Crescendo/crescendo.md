# PowerShell Crescendo

From the help file `about_Crescendo`:
"The PowerShell Crescendo module provides a novel way to create proxy functions for native commands via JSON configuration files."

> _"Yeah, but your scientists were so preoccupied with whether or not they could, they didn't stop to think if they should." -Dr. Ian Malcolm_

Crescendo:

- Don't overthink Crescendo and remember the 4 questions here!!!
- Well documented [schema](https://aka.ms/PowerShell/Crescendo/Schemas/2021-11)
  * Allows LSP autocomplete in your IDE of choice (_NeoVim/VS Code_)
- Contains some great examples
  * _/.local/share/powershell/Modules/Microsoft.PowerShell.Crescendo/1.0.0/Samples/_

## ls

An example wrapper for `ls` is one of the provided examples.

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
