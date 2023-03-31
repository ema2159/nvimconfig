editor = {
  -- Comment
  {
    "numToStr/Comment.nvim",
    config = require("editor.comment"),
  },
  -- Hop
  {
    "phaazon/hop.nvim",
    config = require("editor.hop"),
  },
  -- Move
  {
    "fedepujol/move.nvim",
    config = require("editor.move"),
  },
  -- Vim Visual Multi
  {
    "mg979/vim-visual-multi",
  },
  -- Cmp
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "onsails/lspkind.nvim",
      "saadparwaiz1/cmp_luasnip",
    },
    version = false, -- last release is way too old
    event = "InsertEnter",
    config = require("editor.cmp"),
  },
  -- Luasnip
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
    config = require("editor.luasnip"),
  },
  -- Nvim Autopairs
  {
    "windwp/nvim-autopairs",
    dependencies = {
      "hrsh7th/nvim-cmp",
    },
    config = require("editor.nvim_autopairs"),
  },
}

return editor
