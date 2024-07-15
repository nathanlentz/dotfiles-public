return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "storm",
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "macchiato",
    },
  },

  {
    "LazyVim/LazyVim",
    -- colorscheme = "tokyonight",
    opts = {},
  },
  colorscheme = "catppuccin",
}
