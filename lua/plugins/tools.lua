local tools = {
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
    config = require("tools.neoformat"),
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
        config = require("tools.lspsaga"),
        event = "LspAttach",
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
  -- Null LS
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = require("tools.null_ls"),
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  -- Trouble
  {
    "folke/trouble.nvim",
    config = require("tools.trouble"),
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  -- Vim Mundo
  {
    "simnalamburt/vim-mundo",
    config = require("tools.vim_mundo"),
  },
  -- Peek
  {
    "toppair/peek.nvim",
    config = require("tools.peek"),
    build = "deno task --quiet build:fast",
  },
  -- Deferred clipboard
  {
    "EtiamNullam/deferred-clipboard.nvim",
    config = require("tools.deferred_clipboard")
  },
  -- Diffview
  {
    "sindrets/diffview.nvim",
    config = require("tools.diffview"),
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "VeryLazy",
  },
}

return tools
