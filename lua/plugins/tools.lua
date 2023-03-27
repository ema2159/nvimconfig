tools = {
  -- Comment
  {
    "numToStr/Comment.nvim",
    config = require("tools.comment"),
  },
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
  -- Neogit
  {
    "kdheepak/lazygit.nvim",
    config = require("tools.lazygit"),
    event = "VeryLazy",
  },
}

return tools
