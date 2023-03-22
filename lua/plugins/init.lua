local themes = require("plugins.themes")
local ui = require("plugins.ui")

plugins = {themes, ui}


opts = {
  install = {
    colorscheme = { "catppuccin" }
  },
}

require("lazy").setup(plugins, opts)

vim.cmd.colorscheme "catppuccin"
