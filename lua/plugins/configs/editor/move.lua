return function()

  require('move').setup()
  -- Normal-mode commands
  vim.keymap.set("n", "<M-Down>", "<Cmd>MoveLine(1)<CR>", { desc = "Move line up" })
  vim.keymap.set("n", "<M-Up>", "<Cmd>MoveLine(-1)<CR>", { desc = "Move line down" })
  vim.keymap.set("n", "<M-Left>", "<Cmd>MoveWord(-1)<CR>", { desc = "Move word left" })
  vim.keymap.set("n", "<M-Right>", "<Cmd>MoveWord(1)<CR>", { desc = "Move word right" })

  -- Visual-mode commands
  vim.keymap.set("v", "<M-Up>", "<Cmd>MoveBlock(-1)<CR>", { desc = "Move block up" })
  vim.keymap.set("v", "<M-Down>", "<Cmd>MoveBlock(1)<CR>", { desc = "Move block down" })
  vim.keymap.set("v", "<M-Left>", "<Cmd>MoveHBlock(-1)<CR>", { desc = "Move block left" })
  vim.keymap.set("v", "<M-Right>", "<Cmd>MoveHBlock(1)<CR>", { desc = "Move block right" })
end
