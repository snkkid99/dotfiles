return {
    "kwakzalver/duckytype.nvim",
    lazy = true,
    cmd = "DuckyType",
    config = function()
      require('duckytype').setup{}
    end,
  }
