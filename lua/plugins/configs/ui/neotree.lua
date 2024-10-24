return function()
  require("neo-tree").setup({
    popup_border_style = "solid",
    window = {
      position = "float",
      mappings = {
        -- Enable default Vim searching
        ["/"] = {
          function()
            vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("/", true, false, true), "n", false)
          end,
          desc = "Find in Neotree buffer",
        },
        ["<C-s>"] = "fuzzy_finder",
      },
    },
  })
  vim.keymap.set("n", "<leader>ff", "<Cmd>Neotree reveal<CR>", { desc = "Open tree browser" })
end
