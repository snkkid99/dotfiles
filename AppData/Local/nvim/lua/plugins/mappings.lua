return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          --["<Leader>vn"] = { ':execute "normal! \\<C-v><cr>"', desc = "New tab" },
          ["<C-x>"] = { "<C-v>", desc = "Visual block" },
        },
        t = {},
      },
    },
  },
}
