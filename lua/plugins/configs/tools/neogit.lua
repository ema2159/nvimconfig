return function()
  require("neogit").setup({
    kind = "split",
    commit_popup = {
      kind = "replace",
    },
    preview_buffer = {
      kind = "tab",
    },
    mappings = {
      -- modify status buffer mappings
      status = {
        -- Adds a mapping with "B" as key that does the "BranchPopup" command
        ["F"] = "PullPopup",
        ["k"] = "Discard"
      }
    },
  })

  local function neogit_git_toplevel()
    local git_root_path =
      require("plenary.job"):new({ command = "git", args = { "rev-parse", "--show-toplevel" } }):sync()[1]
    vim.cmd("Neogit cwd=" .. git_root_path)
  end
  vim.keymap.set("n", "<leader>gs", neogit_git_toplevel, { desc = "Neogit status" })
end
