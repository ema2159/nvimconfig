local function servers_config(lspconfig)
	lspconfig.lua_ls.setup({
		settings = {
			Lua = {
				runtime = {
					-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
					version = "LuaJIT",
				},
				diagnostics = {
					-- Get the language server to recognize the `vim` global
					globals = { "vim" },
				},
				workspace = {
					-- Make the server aware of Neovim runtime files
					library = vim.api.nvim_get_runtime_file("", true),
					checkThirdParty = false,
				},
				-- Do not send telemetry data containing a randomized but unique identifier
				telemetry = {
					enable = false,
				},
			},
		},
	})
	lspconfig.pyright.setup({})
	lspconfig.ruff_lsp.setup({})
	lspconfig.ts_ls.setup({})
	lspconfig.rust_analyzer.setup({
		settings = {
			["rust-analyzer"] = {
				check = {
					command = "clippy",
				},
			},
		},
	})
end

local function keymaps_config()
	-- Global mappings.
	-- See `:help vim.diagnostic.*` for documentation on any of the below functions
	vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Diagnostics go to previous" })
	vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Diagnostics go to next" })

	-- Use LspAttach autocommand to only map the following keys
	-- after the language server attaches to the current buffer
	vim.api.nvim_create_autocmd("LspAttach", {
		group = vim.api.nvim_create_augroup("UserLspConfig", {}),
		callback = function(ev)
			-- Enable completion triggered by <c-x><c-o>
			vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

			-- Buffer local mappings.
			vim.keymap.set(
				"n",
				"<leader>lwa",
				vim.lsp.buf.add_workspace_folder,
				{ buffer = ev.buf, desc = "Add workspace folder" }
			)
			vim.keymap.set(
				"n",
				"<leader>lwr",
				vim.lsp.buf.remove_workspace_folder,
				{ buffer = ev.buf, desc = "Remove workspace folder" }
			)
			vim.keymap.set("n", "<leader>lwl", function()
				print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
			end, { buffer = ev.buf, desc = "List workspace folders" })
		end,
	})
end

return function()
	local lspconfig = require("lspconfig")
	servers_config(lspconfig)
	keymaps_config()
end
