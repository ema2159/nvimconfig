return function()
  if not vim.fn.has("win32") then
    require("silicon").setup({})
  end
end

