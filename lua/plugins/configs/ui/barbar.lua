return function()
  -- Move to previous/next
  vim.keymap.set("n", "<C-PageUp>", "<Cmd>BufferPrevious<CR>", {})
  vim.keymap.set("n", "<C-PageDown>", "<Cmd>BufferNext<CR>", {})
  -- Re-order tabs
  vim.keymap.set("n", "<C-S-PageUp>", "<Cmd>BufferMovePrevious<CR>", {})
  vim.keymap.set("n", "<C-S-PageDown>", "<Cmd>BufferMoveNext<CR>", {})
end
