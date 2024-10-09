return function()
  require("lualine").setup({
    options = {
      disabled_filetypes = { "NvimTree" },
    },
    sections = {
      lualine_x = { "encoding", "filesize", "fileformat", "filetype" },
    },
  })
end
