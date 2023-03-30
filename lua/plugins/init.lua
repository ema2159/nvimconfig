local themes = require("plugins.themes")
local tools = require("plugins.tools")
local ui = require("plugins.ui")
local editor = require("plugins.editor")

plugins = { themes, ui, tools, editor }

require("lazy").setup(plugins, opts)

vim.cmd.colorscheme("dracula")
