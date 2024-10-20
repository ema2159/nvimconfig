return function()
  require("neogen").setup({ snippet_engine = "luasnip" })

  vim.keymap.set(
    "n",
    "<Leader>nf",
    ":lua require('neogen').generate()<CR>",
    { desc = "Generate documentation for current item" }
  )
end
