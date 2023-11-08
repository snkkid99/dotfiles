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
    config = function()
      require('duckytype').setup{}
    end,
  },
  {
   "Exafunction/codeium.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
       "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({})
    end,
  }
}
```
