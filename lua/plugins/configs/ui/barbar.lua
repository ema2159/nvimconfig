local function conf_keymaps()
  -- Move to previous/next
  vim.keymap.set("n", "<C-PageUp>", "<Cmd>BufferPrevious<CR>", { desc = "Previous tab" })
  vim.keymap.set("n", "<C-PageDown>", "<Cmd>BufferNext<CR>", { desc = "Next tab" })
  vim.keymap.set("i", "<C-PageUp>", "<Cmd>BufferPrevious<CR>", { desc = "Previous tab" })
  vim.keymap.set("i", "<C-PageDown>", "<Cmd>BufferNext<CR>", { desc = "Next tab" })
  -- Re-order tabs
  vim.keymap.set("n", "<C-S-PageUp>", "<Cmd>BufferMovePrevious<CR>", { desc = "Move tab left" })
  vim.keymap.set("n", "<C-S-PageDown>", "<Cmd>BufferMoveNext<CR>", { desc = "Move tab right" })
  vim.keymap.set("i", "<C-S-PageUp>", "<Cmd>BufferMovePrevious<CR>", { desc = "Move tab left" })
  vim.keymap.set("i", "<C-S-PageDown>", "<Cmd>BufferMoveNext<CR>", { desc = "Move tab right" })
  -- Buffer-picking mode
  vim.keymap.set("n", "<leader>ta", "<Cmd>BufferPick<CR>", { desc = "Jump to tab" })
end

return function()
  require("bufferline").setup({
    -- Enable/disable animations
    animation = false,
    -- Enable/disable auto-hiding the tab bar when there is a single buffer
    auto_hide = false,
  })

  conf_keymaps()
end
