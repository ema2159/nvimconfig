return function()
  local hop = require("hop")
  hop.setup()
  vim.keymap.set("", "<leader>'", function()
    hop.hint_char1()
  end)
end
