return function()
  require("lspsaga").setup({
    code_action = {
      keys = {
        quit = { "q", "<Esc>" },
      },
    },
    outline = {
      keys = {
        quit = "q",
        expand_or_jump = "<CR>",
      },
    },
    definition = {
      quit = { "q", "<Esc>" },
    },
  })
end
