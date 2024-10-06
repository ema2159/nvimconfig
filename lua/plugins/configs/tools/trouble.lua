return function()
  require("trouble").setup({
    height = 15,
    action_keys = { -- key mappings for actions in the trouble list
      jump = { "o", "<tab>" }, -- jump to the diagnostic or open / close folds
      jump_close = { "<cr>" }, -- jump to the diagnostic and close the list
    },
  })

  vim.keymap.set(
    "n",
    "<leader>xX",
    "<cmd>Trouble diagnostics toggle focus=true<cr>",
    { desc = "Diagnostics (Trouble)", silent = true, noremap = true }
  )
  vim.keymap.set(
    "n",
    "<leader>xx",
    "<cmd>Trouble diagnostics toggle filter.buf=0 focus=true<cr>",
    { desc = "Buffer Diagnostics (Trouble)", silent = true, noremap = true }
  )
  vim.keymap.set(
    "n",
    "gR",
    "<cmd>Trouble lsp toggle focus=true win.position=right<cr>",
    { desc = "Trouble LSP references", silent = true, noremap = true }
  )
end
