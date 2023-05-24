return function()
  require("formatter").setup({
    -- Enable or disable logging
    logging = true,
    -- Set the log level
    log_level = vim.log.levels.INFO,
    -- All formatter configurations are opt-in
    filetype = {
      lua = {
        require("formatter.filetypes.lua").stylua,
      },
      python = {
        -- require("formatter.filetypes.python").isort,
        require("formatter.filetypes.python").black,
      },
      rust = {
        require("formatter.filetypes.rust").rustfmt,
      },
      markdown = {
        require("formatter.filetypes.markdown").prettier,
      },
    },
  })

  vim.keymap.set("n", "<leader>lf", "<Cmd>Format<CR>", { desc = "Format file" })
  vim.keymap.set("v", "<leader>lf", "<Cmd>Format<CR>", { desc = "Format visual selection" })
end
