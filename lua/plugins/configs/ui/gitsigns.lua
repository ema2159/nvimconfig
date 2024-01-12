return function()
  require("gitsigns").setup({
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns

      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      -- Navigation
      map("n", "]c", function()
        if vim.wo.diff then
          return "]c"
        end
        vim.schedule(function()
          gs.next_hunk()
        end)
        return "<Ignore>"
      end, { desc = "Next hunk", expr = true })

      map("n", "[c", function()
        if vim.wo.diff then
          return "[c"
        end
        vim.schedule(function()
          gs.prev_hunk()
        end)
        return "<Ignore>"
      end, { desc = "Previous hunk", expr = true })

      -- Actions
      map("n", "<leader>gb", gs.toggle_current_line_blame, { desc = "Toggle line blame" })
      map("n", "<leader>gh", "<cmd>Gitsigns setqflist<cr>", { desc = "Navigate through hunks in current file" })
      map("n", "<leader>gB", function()
        gs.blame_line({ full = true })
      end, { desc = "Blame line full" })
    end,
  })
end
