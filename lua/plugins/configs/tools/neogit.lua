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

  vim.keymap.set("n", "<leader>gs", "<Cmd>Neogit<CR>", { desc = "Neogit status" })
end
