local function load_extensions()
  require("telescope").load_extension("fzf")
  require("telescope").load_extension("file_browser")
  require("telescope").load_extension("ui-select")
  require("telescope").load_extension("notify")
  require("telescope").load_extension("project")
  require("telescope").load_extension("dap")
  require("telescope").load_extension("live_grep_args")
end

local function telescope_project_conf()
  return {
    manual_mode = true,
  }
end

local function telescope_ui_select_conf()
  return {
    theme = "dropdown",
  }
end

local function telescope_live_grep_args_conf()
  local lga_actions = require("telescope-live-grep-args.actions")
  local actions = require("telescope.actions")

  return {
    auto_quoting = true, -- enable/disable auto-quoting
    -- define mappings, e.g.
    mappings = { -- extend mappings
      i = {
        ["<C-k>"] = lga_actions.quote_prompt(),
        ["<C-t>"] = lga_actions.quote_prompt({ postfix = " -t" }),
        ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
        ["<C-q>"] = actions.send_to_qflist,
      },
      n = { ["<C-q>"] = actions.send_to_qflist },
    },
  }
end

local function find_exact(default)
  local builtin = require("telescope.builtin")
  builtin.live_grep({
    default_text = default,
    search_dirs = { "%:p" },
    path_display = { "hidden" },
    disable_devicons = true,
    winblend = 10,
    preview_title = false,
    results_title = false,
    sorting_strategy = "ascending",
  })
end

local function find_under_cursor()
  local word_under_cursor = vim.fn.expand("<cword>")
  find_exact(word_under_cursor)
end

local function conf_keymaps()
  local builtin = require("telescope.builtin")
  local extensions = require("telescope").extensions
  local plenary_job = require("plenary.job")

  -- Built-in keymaps
  vim.keymap.set("n", "<leader>fs", function()
    local git_toplevel = plenary_job:new({ command = "git", args = { "rev-parse", "--show-toplevel" } }):sync()[1]
    builtin.find_files({ cwd = git_toplevel })
  end, { desc = "Find files" })
  vim.keymap.set("n", "<leader>gf", builtin.git_files, { desc = "Git files" })
  vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Recent files" })
  vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Open buffers" })
  vim.keymap.set("n", "<leader>hk", builtin.keymaps, { desc = "Describe keymaps" })
  vim.keymap.set("n", "<leader>hh", builtin.help_tags, { desc = "Help tags" })
  vim.keymap.set("n", "<leader>hm", builtin.man_pages, { desc = "Man pages" })
  vim.keymap.set("n", "<leader>ot", builtin.colorscheme, { desc = "Select theme" })
  vim.keymap.set("n", "/", builtin.current_buffer_fuzzy_find, { desc = "Fuzzy find in file" })
  vim.keymap.set("n", "<C-s>", function()
    find_exact("")
  end, { desc = "Find in buffer exact match" })
  vim.keymap.set("n", "*", find_under_cursor, { desc = "Fuzzy find in file" })
  vim.keymap.set("n", "#", find_under_cursor, { desc = "Fuzzy find in file" })

    -- Extensions keymaps
  vim.keymap.set("n", "<leader>pp", extensions.project.project, { desc = "Project" })
  vim.keymap.set("n", "<leader>fg", function()
    local git_toplevel = plenary_job:new({ command = "git", args = { "rev-parse", "--show-toplevel" } }):sync()[1]
    extensions.live_grep_args.live_grep_args({ cwd = git_toplevel })
  end, { desc = "Live grep in project" })
  vim.keymap.set("n", "<leader>tr", builtin.resume, { desc = "Telescope resume" })
  vim.keymap.set("n", "<leader>ml", function()
    builtin.marks({ mark_type = "local" })
  end, { desc = "Local marks" })
  vim.keymap.set("n", "<leader>mg", function()
    builtin.marks({ mark_type = "global" })
  end, { desc = "Global marks" })
  vim.keymap.set("n", "<leader>ma", function()
    builtin.marks({ mark_type = "all" })
  end, { desc = "All marks" })
end

return function()
  require("telescope").setup({
  -- Custom actions
  local action_state = require("telescope.actions.state")

  local function paste_to_prompt(prompt_bufnr)
    local last_yanked = vim.fn.getreg('"')
    action_state.get_current_picker(prompt_bufnr):set_prompt(last_yanked)
  end

  require("telescope").setup({
    defaults = {
      path_display = { "smart" },
      mappings = {
        n = {
          ["p"] = paste_to_prompt,
        },
      },
    },
    pickers = {
      current_buffer_fuzzy_find = {
        winblend = 10,
        preview_title = false,
        results_title = false,
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
      ["project"] = telescope_project_conf(),
      ["ui-select"] = telescope_ui_select_conf(),
      ["live_grep_args"] = telescope_live_grep_args_conf(),
    },
  })

  load_extensions()
  conf_keymaps()
end
