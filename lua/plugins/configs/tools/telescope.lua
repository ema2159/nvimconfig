return function()
  require("telescope").setup({
    pickers = {
      current_buffer_fuzzy_find = {
        winblend = 10,
        preview_title = false,
        results_title = false,
        theme = "ivy",
      }
    }
  })

  local builtin = require('telescope.builtin')
  vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
  vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {})
  vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
  vim.keymap.set('n', '/', builtin.current_buffer_fuzzy_find, {})
end


