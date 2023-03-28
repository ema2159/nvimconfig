plugins = {
  -- Dashboard
  {
    "glepnir/dashboard-nvim",
    event = "VimEnter",
    config = require("ui.dashboard"),
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  },
  -- Lualine
  {
    "nvim-lualine/lualine.nvim",
    -- init = lazyLoad("lualine.nvim"),
    config = require("ui.lualine"),
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
  -- Indent blankline
  {
    "lukas-reineke/indent-blankline.nvim",
    config = require("ui.indent_blankline"),
  },
  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    config = require("ui.treesitter"),
  },
  -- Barbar
  {
    "romgrk/barbar.nvim",
    config = require("ui.barbar"),
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
  -- Vim Illuminate
  {
    "RRethy/vim-illuminate",
    config = require("ui.vim_illuminate"),
  },
  -- Which Key
  {
    "folke/which-key.nvim",
    config = require("ui.which_key"),
  },
  -- Wilder
  {
    "gelguy/wilder.nvim",
    config = require("ui.wilder"),
  },
  -- Nvim Tree
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = require("ui.nvim_tree"),
  },
  -- Notify
  {
    "rcarriga/nvim-notify",
    config = require("ui.notify"),
  },
}

return plugins
