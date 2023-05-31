# snkkid dotfiles

Powershell + NeoVim for windows

## Powershel
oh-my-posh
PSFzf

## NeoVim
[NvChad](https://github.com/NvChad/NvChad)

init
```
cd ~
git init
git remote add origin https://github.com/snkkid99/dotfiles.git
git pull
git checkout main -f
git submodule update --init --recursive
cd .\AppData\Local\nvim
git checkout v2.0
```
