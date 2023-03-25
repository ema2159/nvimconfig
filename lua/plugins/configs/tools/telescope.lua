return function()
  require("telescope").setup({
    pickers = {
      current_buffer_fuzzy_find = {
        winblend = 10,
        preview_title = false,
        results_title = false,
        theme = "ivy",
        layout_config = {
          height = 15
        },
      },
      commands = {
        theme = "dropdown",
        layout_config = {
          anchor = "N"
        }
      },
      colorscheme = {
        enable_preview = true,
        theme = "dropdown",
        layout_config = {
          anchor = "N"
        }
      }
    }
  })

  local builtin = require('telescope.builtin')
  vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
  vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
  vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {})
  vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
  vim.keymap.set('n', '<leader>hm', builtin.keymaps, {})
  vim.keymap.set('n', '<leader>ot', builtin.colorscheme, {})
  vim.keymap.set('n', '<M-x>', builtin.commands, {})
  vim.keymap.set('n', '/', builtin.current_buffer_fuzzy_find, {})
end


