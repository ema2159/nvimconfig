return function()
  vim.keymap.set("n", "<leader>lf", "<Cmd>Neoformat<CR>", { desc = "Format file" })
end
