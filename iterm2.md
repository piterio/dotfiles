#iterm2

1. Download Menlo Font: https://github.com/abertsch/Menlo-for-Powerline/blob/master/Menlo%20for%20Powerline.ttf
2. Change colors preset and font: Solarized dark and Menlo
3. Change zsh theme and default user:
```
vim .zshrc
ZSH_THEME="agnoster”
DEFAULT_USER="pedrotallon"
colors preset -> Solarized dark
```
4. Add z to zshrc
```
vim .zshrc
if command -v brew >/dev/null 2>&1; then
    # Load rupa's z if installed
    [ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi
```
5. Update zshrc
` source .zshrc `
