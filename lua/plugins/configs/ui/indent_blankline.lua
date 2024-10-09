return function()
	vim.opt.list = true

	require("ibl").setup({
		scope = {
			enabled = true,
			show_start = true,
			highlight = { "Function", "Label" },
		},
		exclude = {
			filetypes = {
				"dashboard",
				"lspinfo",
				"packer",
				"checkhealth",
				"help",
				"man",
				"",
			},
		},
	})
end
