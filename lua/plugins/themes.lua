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
}

-- vim.g.material_style = "oceanic"
return themes
