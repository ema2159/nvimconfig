local editor = require("plugins.editor")
local themes = require("plugins.themes")
local tools = require("plugins.tools")
local ui = require("plugins.ui")

local plugins = { themes, ui, tools, editor }

local colorschemes = {
  "monokai-pro-default",
  "catppuccin-frappe",
  "duskfox",
  "onedark",
  "vscode",
  "tokyonight-storm",
  "tokyonight-moon",
  "github_dark",
}
math.randomseed(os.time())
COLORSCHEME = colorschemes[math.random(#colorschemes)]

require("lazy").setup(plugins)

vim.cmd.colorscheme(COLORSCHEME)
