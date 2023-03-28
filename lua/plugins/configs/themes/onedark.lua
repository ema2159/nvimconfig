return function()
  require("onedark").setup({
    -- Main options --
    style = "light", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'

    -- toggle theme style ---
    toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
    toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between
    t,
  })

  require("onedark").load()
  vim.api.nvim_create_user_command("OnedarkToggle", require("onedark").toggle, {})
end
