plugins = { 
  {
    "nvim-lualine/lualine.nvim",
    -- init = lazyLoad("lualine.nvim"),
    config = require("ui.lualine"),
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  }
}

return plugins
