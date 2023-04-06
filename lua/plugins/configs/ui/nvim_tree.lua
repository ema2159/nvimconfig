return function()
  require("nvim-tree").setup({
    view = {
      mappings = {
        custom_only = false,
        list = {
          { key = "?", action = "Help", action_cb = require("nvim-tree.api").tree.toggle_help },
          { key = "<M-CR>", action = "CD", action_cb = require("nvim-tree.api").tree.change_root_to_node },
        },
      },
    },
    actions = {
      open_file = {
        quit_on_open = false,
      },
    },
    renderer = {
      indent_markers = {
        enable = true,
      },
    },
    update_focused_file = {
      enable = true,
      update_root = true,
    },
  })

  vim.keymap.set("n", "<C-b>", "<Cmd>NvimTreeToggle<CR>", { desc = "Open tree browser" })
end
