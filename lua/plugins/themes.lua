themes = { 
  {
    "catppuccin/nvim"
  },
  {
    "nvim-lualine/lualine.nvim",
    -- init = lazyLoad("lualine.nvim"),
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  }
}

return themes
