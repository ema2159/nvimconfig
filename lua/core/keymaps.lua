local Utils = require("core.utils")

vim.keymap.set("n", "<leader>bk", "<Cmd>bd<CR>", { desc = "Close buffer" })
vim.keymap.set("i", "<Tab>", "<C-f>", { desc = "Place cursor into indent position" })
vim.keymap.set("n", "<leader>ld", function()
	Utils.toggle_diagnostics()
end, { desc = "Toggle diagnostincs" })
