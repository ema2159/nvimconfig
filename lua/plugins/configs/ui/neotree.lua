local function copy_to_reg(content)
  local clipboard_name = "system"
  local reg = "+"

  -- manually firing TextYankPost does not set vim.v.event
  -- workaround: create a scratch buffer with the clipboard contents and send a yank command
  local temp_buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_text(temp_buf, 0, 0, 0, 0, { content })
  vim.api.nvim_buf_call(temp_buf, function()
    vim.cmd(string.format('normal! "%sy$', reg))
  end)
  vim.api.nvim_buf_delete(temp_buf, {})

  vim.notify(
    string.format("Copied %s to %s clipboard!", content, clipboard_name),
    vim.log.levels.INFO,
    { title = "NvimTree" }
  )
end

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
        ["y"] = {
          function(state)
            local name = state.tree:get_node().name
            copy_to_reg(name)
          end,
          desc = "Copy name to clipboard",
          nowait = true,
        },
        ["gy"] = {
          function(state)
            local path = state.tree:get_node().path
            copy_to_reg(path)
          end,
          desc = "Copy path to clipboard",
          nowait = true,
        },
      },
    },
  })
  vim.keymap.set("n", "<leader>ff", "<Cmd>Neotree reveal<CR>", { desc = "Open tree browser" })
end
