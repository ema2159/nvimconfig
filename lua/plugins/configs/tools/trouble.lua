return function()
	require("trouble").setup({
		height = 15,
		keys = { -- key mappings for actions in the trouble list
			o = "jump", -- jump to the diagnostic or open / close folds
			["<cr>"] = "jump_close", -- jump to the diagnostic and close the list
		},
	})

	vim.keymap.set(
		"n",
		"<leader>xX",
		"<cmd>Trouble diagnostics toggle focus=true<cr>",
		{ desc = "Diagnostics (Trouble)", silent = true, noremap = true }
	)
	vim.keymap.set(
		"n",
		"<leader>xx",
		"<cmd>Trouble diagnostics toggle filter.buf=0 focus=true<cr>",
		{ desc = "Buffer Diagnostics (Trouble)", silent = true, noremap = true }
	)
	vim.keymap.set(
		"n",
		"<leader>xq",
		"<cmd>Trouble qflist toggle focus=true<cr>",
		{ desc = "Quickfix list (Trouble)", silent = true, noremap = true }
	)
	vim.keymap.set(
		"n",
		"xr",
		"<cmd>Trouble diagnostics toggle filter.buf=0 focus=true<cr>",
		{ desc = "Trouble LSP references (Trouble)", silent = true, noremap = true }
	)
end
