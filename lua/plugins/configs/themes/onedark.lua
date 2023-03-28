return function()
  require("onedark").setup({
    toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between
  })

  require("onedark").load()
  vim.api.nvim_create_user_command("OnedarkToggle", require("onedark").toggle, {})
end
