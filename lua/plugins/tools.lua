tools = {
  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    config = require("tools.telescope"),
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    event = "VeryLazy",
  },
  -- Telescope File Browser
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    event = "VeryLazy",
  },
  -- Telescope UI Select
  {
    "nvim-telescope/telescope-ui-select.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    event = "VeryLazy",
  },
  -- Telescope Symbols
  {
    "nvim-telescope/telescope-symbols.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    event = "VeryLazy",
  },
  -- Neoformat
  {
    "sbdchd/neoformat",
    event = "VeryLazy",
  },
  -- Toggleterm
  {
    "akinsho/toggleterm.nvim",
    config = require("tools.toggleterm"),
  },
  -- LSP config
  {
    "neovim/nvim-lspconfig",
    config = require("tools.lspconfig"),
  },
  -- Mason
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate", -- :MasonUpdate updates registry contents
    config = require("tools.mason"),
  },
}

return tools
