local themes = require("plugins.themes")
local tools = require("plugins.tools")
local ui = require("plugins.ui")
local editor = require("plugins.editor")

local plugins = { themes, ui, tools, editor }

COLORSCHEME = "catppuccin-frappe"

require("lazy").setup(plugins)

vim.cmd.colorscheme(COLORSCHEME)
