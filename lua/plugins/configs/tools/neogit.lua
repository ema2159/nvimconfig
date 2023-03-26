return function()
  require("neogit").setup({})

  vim.keymap.set("n", "<leader>gs", "<Cmd>Neogit<CR>", {})
end
