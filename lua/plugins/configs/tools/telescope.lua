local function load_extensions()
  require("telescope").load_extension("file_browser")
  require("telescope").load_extension("ui-select")
end

local function telescope_file_browser_conf()
  local fb_actions = require("telescope").extensions.file_browser.actions

  return {
    -- disables netrw and use telescope-file-browser in its place
    hijack_netrw = true,
    mappings = {
      ["i"] = {
        ["<M-CR>"] = fb_actions.create_from_prompt, -- Change to <S-CR> when appropriate terminal emulator is installed
      },
    },
  }
end

local function telescope_ui_select_conf()
  return {
    theme = "dropdown",
  }
end

function fuzzy_find_under_cursor()
  local builtin = require("telescope.builtin")
  word_under_cursor = vim.fn.expand("<cword>")
  builtin.current_buffer_fuzzy_find({default_text=word_under_cursor})
end

local function conf_keymaps()
  local builtin = require("telescope.builtin")
  local extensions = require("telescope").extensions

  -- Built-in keymaps
  vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
  vim.keymap.set("n", "<leader>gf", builtin.git_files, { desc = "Git files" })
  vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Recent files" })
  vim.keymap.set("n", "<leader>bb", builtin.buffers, { desc = "Open buffers" })
  vim.keymap.set("n", "<leader>hm", builtin.keymaps, { desc = "Describe keymaps" })
  vim.keymap.set("n", "<leader>ot", builtin.colorscheme, { desc = "Select theme" })
  vim.keymap.set("n", "<M-x>", builtin.commands, { desc = "Command Palette" })
  vim.keymap.set("n", "/", builtin.current_buffer_fuzzy_find, { desc = "Fuzzy find in file" })
  vim.keymap.set("n", "*", fuzzy_find_under_cursor, { desc = "Fuzzy find in file" })
  vim.keymap.set("n", "#", fuzzy_find_under_cursor, { desc = "Fuzzy find in file" })

  -- Extensions keymaps
  vim.keymap.set("n", "<leader>fb", extensions.file_browser.file_browser, { desc = "File browser" })
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
          height = 15,
        },
      },
      commands = {
        theme = "dropdown",
        layout_config = {
          anchor = "N",
        },
      },
      colorscheme = {
        enable_preview = true,
        theme = "dropdown",
        layout_config = {
          anchor = "N",
        },
      },
    },
    extensions = {
      ["file_browser"] = telescope_file_browser_conf(),
      ["ui-select"] = telescope_ui_select_conf(),
    },
  })

  load_extensions()
  conf_keymaps()
end
