local editor = require("plugins.editor")
local themes = require("plugins.themes")
local tools = require("plugins.tools")
local ui = require("plugins.ui")

local plugins = { themes, ui, tools, editor }

local colorschemes = { "catppuccin-frappe", "duskfox", "onedark_vivid", "vscode" }
math.randomseed(os.time())
COLORSCHEME = colorschemes[math.random(#colorschemes)]

require("lazy").setup(plugins)

vim.cmd.colorscheme(COLORSCHEME)
