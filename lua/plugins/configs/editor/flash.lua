return function()
  local flash = require("flash")

  flash.setup({
    label = {
      uppercase = false,
    },
    modes = {
      char = {
        enabled = false,
      },
    },
  })

  vim.keymap.set({ "n", "v" }, "s", function()
    flash.jump()
  end, { desc = "Flash" })
  vim.keymap.set({ "n", "v" }, "S", function()
    flash.treesitter()
  end, { desc = "Flash Treesitter" })
end
