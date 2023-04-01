local function config_lazygit()
  local Terminal = require("toggleterm.terminal").Terminal
  local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, dir = "git_dir", direction = "float", size = 70 })

  local function lazygit_toggle()
    lazygit:toggle()
  end

  vim.keymap.set("n", "<leader>gs", lazygit_toggle, { desc = "LazyGit status" })
end

return function()
  require("toggleterm").setup()

  vim.api.nvim_set_keymap(
    "n",
    "<F5>",
    "<Cmd>ToggleTerm size=20 dir=%d direction=float<CR>",
    { desc = "Toggle terminal" }
  )
  vim.keymap.set("t", "<F5>", "<Cmd>ToggleTerm<CR>")

  -- Lazygit
  config_lazygit()
end
