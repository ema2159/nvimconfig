local function config_lazygit()
  local Terminal = require("toggleterm.terminal").Terminal
  local lazygit = Terminal:new({
    cmd = "lazygit",
    count = 2,
    direction = "float",
    dir = "git_dir",
    size = 70,
    float_opts = {
      border = "double",
    },
    close_on_exit = true,
    -- function to run on opening the terminal
    on_open = function(_term)
      vim.cmd("startinsert!")
    end,
    -- function to run on closing the terminal
    on_close = function(_term)
      vim.cmd("startinsert!")
    end,
  })

  local function lazygit_toggle()
    lazygit.dir = vim.fn.expand("%:p:h")
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
