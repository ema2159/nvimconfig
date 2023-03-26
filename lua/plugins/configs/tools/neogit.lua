return function()
  require("neogit").setup({})

  local function neogit_git_toplevel()
    local git_root_path =
      require("plenary.job"):new({ command = "git", args = { "rev-parse", "--show-toplevel" } }):sync()[1]
      vim.cmd("Neogit cwd=" .. git_root_path)
  end
  vim.keymap.set("n", "<leader>gs", neogit_git_toplevel, {})
end
