local themes = require("plugins.themes")
local ui = require("plugins.ui")
local tools = require("plugins.tools")

plugins = {themes, ui, tools}

require("lazy").setup(plugins, opts)

vim.cmd.colorscheme "catppuccin"
