local function conf_keymaps()
	-- Move to previous/next
	vim.keymap.set({ "n", "v", "i" }, "<C-PageUp>", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Previous tab" })
	vim.keymap.set({ "n", "v", "i" }, "<C-PageDown>", "<Cmd>BufferLineCycleNext<CR>", { desc = "Next tab" })
	-- Re-order tabs
	vim.keymap.set({ "n", "v", "i" }, "<C-S-PageUp>", "<Cmd>BufferLineMovePrev<CR>", { desc = "Move tab left" })
	vim.keymap.set({ "n", "v", "i" }, "<C-S-PageDown>", "<Cmd>BufferLineMoveNext<CR>", { desc = "Move tab right" })
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
			groups = {
				options = {
					toggle_hidden_on_enter = true, -- when you re-enter a hidden group this options re-opens that group so the buffer is visible
				},
				items = {
					{
						name = "Test", -- Mandatory
						priority = 2, -- determines where it will appear relative to other groups (Optional)
						matcher = function(buf) -- Mandatory
							return buf.name:match("%_test") or buf.name:match("%_spec")
						end,
					},
					{
						name = "Docs",
						auto_close = false, -- whether or not close this group if it doesn't contain the current buffer
						matcher = function(buf)
							return buf.name:match("%.md") or buf.name:match("%.txt")
						end,
						separator = { -- Optional
							style = require("bufferline.groups").separator.tab,
						},
					},
				},
			},
		},
	})

	vim.cmd.colorscheme(COLORSCHEME)

	conf_keymaps()
end
