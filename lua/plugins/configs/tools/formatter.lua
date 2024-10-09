return function()
  require("formatter").setup({
    -- Enable or disable logging
    logging = true,
    -- Set the log level
    log_level = vim.log.levels.INFO,
    -- All formatter configurations are opt-in
    filetype = {
      bash = {
        function()
          return {
            exe = "shfmt",
          }
        end,
      },
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
      c = {
        require("formatter.filetypes.c").clangformat,
      },
      cpp = {
        require("formatter.filetypes.c").clangformat,
      },
      markdown = {
        require("formatter.filetypes.markdown").prettier,
      },
      robot = {
        function()
          return {
            exe = "robotidy",
          }
        end,
      },
      sh = {
        function()
          return {
            exe = "shfmt",
          }
        end,
      },
    },
  })

  vim.keymap.set("n", "<leader>lf", "<Cmd>Format<CR>", { desc = "Format file" })
  vim.keymap.set("v", "<leader>lf", "<Cmd>Format<CR>", { desc = "Format visual selection" })
end
