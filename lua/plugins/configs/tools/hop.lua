return function()
  local hop = require("hop")
  hop.setup()
  local directions = require("hop.hint").HintDirection
  vim.keymap.set("", "<leader>'", function()
    hop.hint_char1()
  end)
end
