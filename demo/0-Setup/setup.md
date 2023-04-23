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

**DISCLAIMER**: This demo was largely written to work on my machine!

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

---

## Addendum

If curious how I switched between terminal tabs and screens very high level description below:
If you are using my dot files and have the same setup:

- Window Manager: i3 (gaps)
- Terminal: kitty

Then you can use the following shortcuts:

| Command/Shortcut | Application | Purpose |
| --- | --- | --- |
| `ctrl`+`shift`+`t` | kitty | Open a new kitty tab |
| `alt`+`<num>` | kitty | Switch to kitty tab `<num>` |
| `ctrl`+`shift`+`+` | kitty | Increase terminal font size | 
| `mod`+`<num>` | i3 | Switch to workspace `<num>` |

You can also change the kitty theme with the following command: `kitty +kitten themes`
