return function()
  require("neo-tree").setup({
    popup_border_style = "solid",
    window = {
      position = "float",
    },
  })
  vim.keymap.set("n", "<leader>ff", "<Cmd>Neotree reveal<CR>", { desc = "Open tree browser" })
end
