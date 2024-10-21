return function()
  require("todo-comments").setup()

    vim.keymap.set(
    "n",
    "<leader>xd",
    "<cmd>Trouble todo focus=true filter.buf=0<cr>",
    { desc = "Todo comments current buffer (Trouble)", silent = true, noremap = true }
  )

  vim.keymap.set(
    "n",
    "<leader>xD",
    "<cmd>Trouble todo focus=true<cr>",
    { desc = "Todo comments all (Trouble)", silent = true, noremap = true }
  )
end
