return function()
  require("toggleterm").setup()
  vim.api.nvim_set_keymap(
    "n",
    "<F5>",
    "<Cmd>ToggleTerm size=20 dir=~/Desktop direction=horizontal<CR>",
    { desc = "Toggle terminal" }
  )
end
