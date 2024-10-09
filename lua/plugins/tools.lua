local tools = {
	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		config = require("tools.telescope"),
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-file-browser.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
			"nvim-telescope/telescope-symbols.nvim",
			"nvim-telescope/telescope-project.nvim",
			"nvim-telescope/telescope-dap.nvim",
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
			},
		},
		event = "VeryLazy",
	},
	-- Neoformat
	{
		"mhartington/formatter.nvim",
		config = require("tools.formatter"),
		event = "VeryLazy",
	},
	-- Toggleterm
	{
		"akinsho/toggleterm.nvim",
		config = require("tools.toggleterm"),
	},
	-- LSP config
	{
		"neovim/nvim-lspconfig",
		config = require("tools.lspconfig"),
		dependencies = {
			{
				"glepnir/lspsaga.nvim",
				config = require("tools.lspsaga"),
				event = "LspAttach",
				dependencies = {
					{ "nvim-tree/nvim-web-devicons" },
					{ "nvim-treesitter/nvim-treesitter" },
				},
			},
			-- Navbuddy
			{
				"SmiteshP/nvim-navbuddy",
				config = require("tools.navbuddy"),
				dependencies = {
					"SmiteshP/nvim-navic",
					"MunifTanjim/nui.nvim",
				},
			},
			-- LSP signature
			{
				"ray-x/lsp_signature.nvim",
				config = require("tools.lsp_signature"),
			},
		},
	},
	-- Neodev
	{
		"folke/neodev.nvim",
		config = require("tools.neodev"),
	},
	-- Mason
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate", -- :MasonUpdate updates registry contents
		config = require("tools.mason"),
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"jay-babu/mason-nvim-dap.nvim",
		},
	},
	-- Trouble
	{
		"folke/trouble.nvim",
		config = require("tools.trouble"),
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	-- Nvim DAP
	{
		"mfussenegger/nvim-dap",
		config = require("tools.nvim_dap"),
		dependencies = { "nvim-neotest/nvim-nio" },
	},
	-- Nvim DAP UI
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap" },
		config = require("tools.nvim_dap_ui"),
	},
	-- Vim Mundo
	{
		"simnalamburt/vim-mundo",
		config = require("tools.vim_mundo"),
	},
	-- Peek
	{
		"toppair/peek.nvim",
		config = require("tools.peek"),
		build = "deno task --quiet build:fast",
	},
	-- Diffview
	{
		"sindrets/diffview.nvim",
		config = require("tools.diffview"),
		dependencies = { "nvim-lua/plenary.nvim" },
		event = "VeryLazy",
	},
}

return tools
