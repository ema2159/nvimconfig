return function()
  require("nvim-tree").setup({
    view = {
      mappings = {
        custom_only = false,
        list = {
          { key = "?", action = "Help", action_cb = require("nvim-tree.api").tree.toggle_help }
        }
      },
    },
    actions = {
      open_file = {
        quit_on_open = false
      }
    }
  })

  vim.keymap.set("n", "<C-b>", "<Cmd>NvimTreeToggle<CR>", { desc = "Command Palette" })
end
