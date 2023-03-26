local function conf_keymaps()
  -- Move to previous/next
  vim.keymap.set("n", "<C-PageUp>", "<Cmd>BufferPrevious<CR>", {})
  vim.keymap.set("n", "<C-PageDown>", "<Cmd>BufferNext<CR>", {})
  vim.keymap.set("i", "<C-PageUp>", "<Cmd>BufferPrevious<CR>", {})
  vim.keymap.set("i", "<C-PageDown>", "<Cmd>BufferNext<CR>", {})
  -- Re-order tabs
  vim.keymap.set("n", "<C-S-PageUp>", "<Cmd>BufferMovePrevious<CR>", {})
  vim.keymap.set("n", "<C-S-PageDown>", "<Cmd>BufferMoveNext<CR>", {})
  vim.keymap.set("i", "<C-S-PageUp>", "<Cmd>BufferMovePrevious<CR>", {})
  vim.keymap.set("i", "<C-S-PageDown>", "<Cmd>BufferMoveNext<CR>", {})
  -- Buffer-picking mode
  vim.keymap.set("n", "<leader>ta", "<Cmd>BufferPick<CR>", {})
end

return function()
  require("bufferline").setup({
    -- Enable/disable animations
    animation = false,
    -- Enable/disable auto-hiding the tab bar when there is a single buffer
    auto_hide = true,
  })

  conf_keymaps()
end
