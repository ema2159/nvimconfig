function conf_extensions()
  require("telescope").load_extension "file_browser"
end

function conf_keymaps()
  -- Built-in keymaps
  local builtin = require("telescope.builtin")
  vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
  vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
  vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {})
  vim.keymap.set("n", "<leader>bb", builtin.buffers, {})
  vim.keymap.set("n", "<leader>hm", builtin.keymaps, {})
  vim.keymap.set("n", "<leader>ot", builtin.colorscheme, {})
  vim.keymap.set("n", "<M-x>", builtin.commands, {})
  vim.keymap.set("n", "/", builtin.current_buffer_fuzzy_find, {})

  -- Extensions keymaps
  local extensions = require("telescope").extensions
  vim.keymap.set("n", "<leader>fb", extensions.file_browser.file_browser, {})
end

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
    },
    extensions = {
      file_browser = {
        -- disables netrw and use telescope-file-browser in its place
        hijack_netrw = true,
      },
    },
  })

  conf_extensions()
  conf_keymaps()
end


