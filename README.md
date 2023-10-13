# dotfiles for Windows
Powershell 7^ + NeoVim

## Powershell
- oh-my-posh
- PSFzf

## NeoVim
- fork of [NvChad](https://github.com/NvChad/NvChad)

## Install
Software _to review_
```
winget install Git.Git
winget install JanDeDobbeleer.OhMyPosh
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
