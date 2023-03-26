return function()
  vim.opt.list = true
  vim.opt.listchars:append("eol:↴")

  require("indent_blankline").setup({
    show_end_of_line = true,
    show_current_context = true,
    use_treesitter_scope = true,
  })
end
