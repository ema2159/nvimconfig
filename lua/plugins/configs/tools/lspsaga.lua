return function()
  require("lspsaga").setup({
    code_action = {
      keys = {
        quit = { "q", "<Esc>" },
      },
    },
    outline = {
      keys = {
        quit = "q",
        expand_or_jump = "<CR>",
      },
    },
    definition = {
      quit = { "q", "<Esc>" },
    },
    finder = {
      keys = {
        expand_or_jump = "<CR>",
        quit = { "q", "<ESC>" },
      },
    },
  })

  local function goto_definition_mark()
    vim.cmd("norm! mD")
    vim.cmd("Lspsaga goto_definition")
  end

  local function go_back_from_definition()
    vim.cmd("norm! `D")
  end

  vim.keymap.set("n", "gd", "<Cmd>Lspsaga peek_definition<CR>", { desc = "Peek to definition" })
  vim.keymap.set("n", "gD", goto_definition_mark, { desc = "Jump to definition" })
  vim.keymap.set("n", "gb", go_back_from_definition, { desc = "Jump to definition" })
  vim.keymap.set(
  "n",
  "<leader>lD",
  "<Cmd>Lspsaga peek_type_definition<CR>",
  { desc = "Type definition" }
  )
  vim.keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", { desc = "Hover" })
  vim.keymap.set("n", "<leader>lo", "<Cmd>Lspsaga outline<CR>", { desc = "Show outline" })
  vim.keymap.set("n", "<leader>lr", "<Cmd>Lspsaga rename ++project<CR>", { desc = "Rename" })
  vim.keymap.set({ "n", "v" }, "<leader>la", "<Cmd>Lspsaga code_action<CR>", { desc = "Code actions" })
  vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { desc = "LSP finder" })
end
