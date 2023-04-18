# Setup

The following shells are required for this demo:

- pwsh
- ksh
- zsh
- fish
- xonsh

The following utilities are required:

- `glow`

You can always use `Show-Markdown` if you don't like `glow`

## Install Shells and Requisite Utils

This is written for my machine!
If following along at home please install with your native package manager.
If you are on Windows 🤷 ehh, well... _probably just use WSL_...

```bash
# Install Shells and Glow (for pretty markdown in the terminal)
pacman -S fish ksh zsh bash xonsh glow

# Install yay the AUR helper
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Install PowerShell
yay -S powershell-bin
```

## Demo Time!!!

```pwsh
Set-Location -Path ~/code/git/PowerShell-Summit-2023/
glow ./0-Setup/setup.md
```
