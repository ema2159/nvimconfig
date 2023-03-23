tools = { 
  -- Comment
  {
    "numToStr/Comment.nvim",
    config = require("tools.comment")
  },
  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    config = require("tools.telescope"),
    dependencies = {
      "nvim-lua/plenary.nvim"
    },
    event = "VeryLazy"
  }
}

return tools

