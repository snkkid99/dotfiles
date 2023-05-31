# snkkid dotfiles

For windows Powershell + NeoVim

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
