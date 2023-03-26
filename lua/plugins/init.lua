local themes = require("plugins.themes")
local tools = require("plugins.tools")
local ui = require("plugins.ui")

plugins = { themes, ui, tools }

require("lazy").setup(plugins, opts)

vim.cmd.colorscheme("material")
