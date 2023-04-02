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
  lspconfig.tsserver.setup({})
  lspconfig.rust_analyzer.setup({
    -- Server-specific settings. See `:help lspconfig-setup`
    settings = {
      ["rust-analyzer"] = {},
    },
  })
end

local function keymaps_config()
  -- Global mappings.
  -- See `:help vim.diagnostic.*` for documentation on any of the below functions
  vim.keymap.set("n", "<leader>le", vim.diagnostic.open_float, { desc = "Diagnostics open float" })
  vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Diagnostics go to previous" })
  vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Diagnostics go to next" })
  vim.keymap.set("n", "<leader>lq", vim.diagnostic.setloclist, { desc = "Buf diagnostic too loclist" })

  -- Use LspAttach autocommand to only map the following keys
  -- after the language server attaches to the current buffer
  vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(ev)
      -- Enable completion triggered by <c-x><c-o>
      vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

      -- Buffer local mappings.
      -- See `:help vim.lsp.*` for documentation on any of the below functions
      vim.keymap.set("n", "gd", "<Cmd>Lspsaga peek_definition<CR>", { desc = "Peek to definition" })
      vim.keymap.set("n", "gD", "<Cmd>Lspsaga goto_definition<CR>", { desc = "Jump to definition" })
      vim.keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", { desc = "Hover" })
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = ev.buf, desc = "Implementations" })
      vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { buffer = ev.buf, desc = "Signature help" })
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
      vim.keymap.set(
        "n",
        "<leader>lD",
        "<Cmd>Lspsaga peek_type_definition<CR>",
        { buffer = ev.buf, desc = "Type definition" }
      )
      vim.keymap.set("n", "<leader>lo", "<Cmd>Lspsaga outline<CR>", { desc = "Show outline" })
      vim.keymap.set("n", "<leader>lr", "<Cmd>Lspsaga rename ++project<CR>", { desc = "Rename" })
      vim.keymap.set({ "n", "v" }, "<leader>la", "<Cmd>Lspsaga code_action<CR>", { desc = "Code actions" })
      vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = ev.buf, desc = "References" })
      vim.keymap.set("n", "<leader>lf", function()
        vim.lsp.buf.format({ async = true })
      end, { buffer = ev.buf, desc = "Format file" })

      vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { desc = "LSP finder" })

      -- Diagnostics keymaps
      vim.keymap.set("n", "<leader>lsl", "<cmd>Lspsaga show_line_diagnostics<CR>", { desc = "Line diagnostics" })
      vim.keymap.set("n", "<leader>lsb", "<cmd>Lspsaga show_buf_diagnostics<CR>", { desc = "Buffer diagnostics" })
      vim.keymap.set(
        "n",
        "<leader>lsw",
        "<cmd>Lspsaga show_workspace_diagnostics<CR>",
        { desc = "Workspace diagnostics" }
      )
      vim.keymap.set("n", "<leader>lsc", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { desc = "Cursor diagnostics" })
    end,
  })
end

return function()
  local lspconfig = require("lspconfig")
  servers_config(lspconfig)
  keymaps_config()
end
