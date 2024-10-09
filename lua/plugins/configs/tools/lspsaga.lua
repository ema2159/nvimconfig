return function()
	-- Highlights
	vim.api.nvim_set_hl(0, "SagaNormal", { link = "Normal" })
	vim.api.nvim_set_hl(0, "SagaBorder", { link = "Normal" })
	vim.api.nvim_create_autocmd("ColorScheme", {
		pattern = "*",
		callback = function()
			vim.api.nvim_set_hl(0, "SagaNormal", { link = "Normal" })
			vim.api.nvim_set_hl(0, "SagaBorder", { link = "Normal" })
		end,
	})
	require("lspsaga").setup({
		code_action = {
			keys = {
				quit = { "q", "<Esc>" },
			},
		},
		ui = {
			code_action = "",
			border = "rounded",
			winblend = 10,
		},
		outline = {
			keys = {
				quit = "q",
				toggle_or_open = "<CR>",
			},
		},
		definition = {
			quit = { "q", "<Esc>" },
		},
		finder = {
			keys = {
				toggle_or_open = "<CR>",
				quit = { "q", "<ESC>" },
			},
		},
	})

	-- Keymaps
	vim.keymap.set("n", "gd", "<Cmd>Lspsaga peek_definition<CR>", { desc = "Peek to definition" })
	vim.keymap.set("n", "gD", "<Cmd>Lspsaga goto_definition<CR>", { desc = "Jump to definition" })
	vim.keymap.set("n", "<leader>lD", "<Cmd>Lspsaga peek_type_definition<CR>", { desc = "Type definition" })
	vim.keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", { desc = "Hover" })
	vim.keymap.set("n", "<leader>lo", "<Cmd>Lspsaga outline<CR>", { desc = "Show outline" })
	vim.keymap.set("n", "<leader>lr", "<Cmd>Lspsaga rename<CR>", { desc = "Rename in file" })
	vim.keymap.set("n", "<leader>lR", "<Cmd>Lspsaga rename ++project<CR>", { desc = "Rename in project" })
	vim.keymap.set({ "n", "v" }, "<leader>la", "<Cmd>Lspsaga code_action<CR>", { desc = "Code actions" })
	vim.keymap.set("n", "gh", "<cmd>Lspsaga finder<CR>", { desc = "LSP finder" })
end
