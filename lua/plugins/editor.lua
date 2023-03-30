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
  -- cmp
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "onsails/lspkind.nvim",
    },
    event = "InsertEnter",
    config = require("editor.cmp"),
  },
}

return editor
