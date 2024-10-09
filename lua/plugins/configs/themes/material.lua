return function()
	require("material").setup({
		plugins = { -- Uncomment the plugins that you use to highlight them
			-- Available plugins:
			"dap",
			"dashboard",
			"gitsigns",
			"hop",
			"indent-blankline",
			"lspsaga",
			"mini",
			"neogit",
			"neorg",
			"nvim-cmp",
			"nvim-navic",
			"nvim-tree",
			"nvim-web-devicons",
			"sneak",
			"telescope",
			"trouble",
			"which-key",
		},
	})

	vim.api.nvim_create_user_command("MaterialSelect", require("material.functions").find_style, {})
end
