# dotfiles for Windows
Powershell 7^ + NeoVim

## Powershell
- oh-my-posh
- PSFzf

## NeoVim
https://github.com/LunarVim/LunarVim

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

AstroNim
```
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
git clone --depth 1 https://github.com/AstroNvim/template $env:LOCALAPPDATA\nvim
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force
nvim
```


Lunarvim
```
git clone https://github.com/LunarVim/LunarVim.git $HOME\AppData\Local\nvim
```

Dans
~\AppData\Local\nvim-data\site\pack\lazy\opt\telescope-fzf-native.nvim
```
cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release
cmake --build build --config Release
cmake --install build --prefix build
```

config.lua:
```
-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- Enable powershell as your default shell
vim.opt.shell = "pwsh.exe"
vim.opt.shellcmdflag =
  "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
vim.cmd [[
		let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
		let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
		set shellquote= shellxquote=
  ]]

-- Set a compatible clipboard manager
vim.g.clipboard = {
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf",
  },
  paste = {
    ["+"] = "win32yank.exe -o --lf",
    ["*"] = "win32yank.exe -o --lf",
  },
}

lvim.keys.normal_mode["<C-q>"] = false
require 'nvim-treesitter.install'.compilers = { "cl" }
require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "c", "lua", "vim", "vimdoc", "python", "ini", "html", "sql", "c_sharp",
    "css", "cpp", "javascript", "markdown", "markdown_inline", "regex", "comment",
    "php", "scss", "typescript", "tsx", "java", "json", "yaml", "xml", "dockerfile",
    "diff", "csv", "gitignore", "gitcommit", "gitattributes", "bash"
  }
}

lvim.plugins =
{
  {
    "kwakzalver/duckytype.nvim",
    lazy = true,
    cmd = "DuckyType",
    config = function()
      require('duckytype').setup{}
    end,
  },
  {
    "Exafunction/codeium.vim",
    event = "BufEnter"
  }
}
```
