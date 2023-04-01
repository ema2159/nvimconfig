tools = {
  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    config = require("tools.telescope"),
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-file-browser.nvim",
      "nvim-telescope/telescope-ui-select.nvim",
      "nvim-telescope/telescope-symbols.nvim",
      "nvim-telescope/telescope-project.nvim",
    },
    event = "VeryLazy",
  },
  -- Neoformat
  {
    "sbdchd/neoformat",
    event = "VeryLazy",
  },
  -- Toggleterm
  {
    "akinsho/toggleterm.nvim",
    config = require("tools.toggleterm"),
  },
  -- LSP config
  {
    "neovim/nvim-lspconfig",
    config = require("tools.lspconfig"),
    dependencies = {
      {
        "glepnir/lspsaga.nvim",
        -- config = require("tools.lspsaga"),
        dependencies = {
          { "nvim-tree/nvim-web-devicons" },
          { "nvim-treesitter/nvim-treesitter" },
        },
      },
    },
  },
  -- Mason
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate", -- :MasonUpdate updates registry contents
    config = require("tools.mason"),
    dependencies = { "williamboman/mason-lspconfig.nvim" },
  },
  -- Vim Mundo
  {
    "simnalamburt/vim-mundo",
    config = require("tools.vim_mundo"),
  },
}

return tools
