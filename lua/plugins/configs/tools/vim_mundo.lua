return function()
  vim.g.mundo_right = 1
  vim.keymap.set("n", "<leader>u", "<Cmd>MundoToggle<CR>", { desc = "Undo tree" })
end
