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
    "navarasu/onedark.nvim",
    config = require("themes.onedark"),
  },
  -- Monokai Pro
  {
    "loctvl842/monokai-pro.nvim",
    config = require("themes.monokai_pro"),
  },
}

-- vim.g.material_style = "oceanic"
return themes
