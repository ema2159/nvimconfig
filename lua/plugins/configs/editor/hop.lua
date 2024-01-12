return function()
  local hop = require("hop")
  hop.setup()
  vim.keymap.set({"n", "v"}, "<leader>'", function()
    hop.hint_char1()
  end, { desc = "Hop to character" })
end
