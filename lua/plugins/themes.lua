plugins = { 
  {
    "catppuccin/nvim"
  }
}

require("lazy").setup(plugins)

vim.cmd.colorscheme "catppuccin"
