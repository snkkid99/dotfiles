# dotfiles for Windows
Powershell + NeoVim

## Powershell
- oh-my-posh
- PSFzf

## NeoVim
- [NvChad](https://github.com/NvChad/NvChad)

## Install
Software __to review__
```
winget install Git.Git
winget install JanDeDobbeleer.OhMyPosh -s winget
winget install Neovim.Neovim
```
Config
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
