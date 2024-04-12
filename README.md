# dotfiles for Windows
Powershell 7^ + NeoVim (AstroNim)

## Powershell
- oh-my-posh
- PSFzf

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
```

## AstroNim
https://astronvim.com/
```
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
git clone --depth 1 https://github.com/AstroNvim/template $env:LOCALAPPDATA\nvim
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force
nvim
```

ajout ~\AppData\Local\nvim\init.lua
```
-- Enable powershell as your default shell
vim.opt.shell = "pwsh.exe"
vim.opt.shellcmdflag =
  "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
vim.cmd [[
		let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
		let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
		set shellquote= shellxquote=
  ]]
```

