local function conf_keymaps()
  -- Move to previous/next
  vim.keymap.set({ "n", "v", "i" }, "<C-PageUp>", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Previous tab" })
  vim.keymap.set({ "n", "v", "i" }, "<C-PageDown>", "<Cmd>BufferLineCycleNext<CR>", { desc = "Next tab" })
  -- Re-order tabs
  vim.keymap.set({ "n", "v", "i" }, "<S-PageUp>", "<Cmd>BufferLineMovePrev<CR>", { desc = "Move tab left" })
  vim.keymap.set({ "n", "v", "i" }, "<S-PageDown>", "<Cmd>BufferLineMoveNext<CR>", { desc = "Move tab right" })
  -- Buffer-picking mode
  vim.keymap.set("n", "<leader>tp", "<Cmd>BufferLinePick<CR>", { desc = "Pick tab" })
  vim.keymap.set("n", "<leader>tc", "<Cmd>BufferLinePickClose<CR>", { desc = "Pick tab close" })
  vim.keymap.set("n", "<leader>tP", "<Cmd>BufferLineTogglePin<CR>", { desc = "Toggle tab pin" })
end

return function()
  local bufferline = require("bufferline")
  bufferline.setup({
    options = {
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          text_align = "left",
          separator = false,
        },
        hover = {
          enabled = true,
          delay = 200,
          reveal = { "close" },
        },
      },
    },
  })

  vim.cmd.colorscheme(COLORSCHEME)

  conf_keymaps()
end
