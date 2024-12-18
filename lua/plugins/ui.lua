local plugins = {
  -- Dashboard
  {
    "glepnir/dashboard-nvim",
    event = "VimEnter",
    config = require("ui.dashboard"),
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  },
  -- Lualine
  {
    "nvim-lualine/lualine.nvim",
    -- init = lazyLoad("lualine.nvim"),
    config = require("ui.lualine"),
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
  -- Indent blankline
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufEnter",
    config = require("ui.indent_blankline"),
  },
  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    config = require("ui.treesitter"),
  },
  -- Bufferline
  {
    "akinsho/bufferline.nvim",
    config = require("ui.bufferline"),
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
  -- Vim Illuminate
  {
    "RRethy/vim-illuminate",
    event = "BufEnter",
    config = require("ui.vim_illuminate"),
  },
  -- Which Key
  {
    "folke/which-key.nvim",
    config = require("ui.which_key"),
  },
  -- Nvim Tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = require("ui.neotree"),
  },
  -- Noice
  {
    "folke/noice.nvim",
    config = require("ui.noice"),
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    event = "VeryLazy",
  },
  -- Git Signs
  {
    "lewis6991/gitsigns.nvim",
    config = require("ui.gitsigns"),
  },
  -- TODO Comments
  {
    "folke/todo-comments.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = require("ui.todo_comments"),
  },
  -- Fidget
  {
    "j-hui/fidget.nvim",
    event = "LspAttach",
    config = require("ui.fidget"),
  },
  -- Markdown nvim
  {
    "MeanderingProgrammer/markdown.nvim",
    name = "render-markdown", -- Only needed if you have another plugin named markdown.nvim
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- Mandatory
      "nvim-tree/nvim-web-devicons", -- Optional but recommended
    },
    config = require("ui.markdown"),
  },
}

return plugins
