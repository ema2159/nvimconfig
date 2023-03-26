themes = {
  -- Catppuccin
  {
    "catppuccin/nvim",
  },
  -- Material
  {
    "marko-cerovac/material.nvim",
    config = require("themes.material"),
  },
  -- One Dark
  {
    "joshdick/onedark.vim",
  },
}

-- vim.g.material_style = "oceanic"
return themes
