local function keymaps_config(dap)
  vim.keymap.set("n", "<leader>dc", dap.continue(), { desc = "DAP continue" })
  vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint(), { desc = "" })
  vim.keymap.set("n", "<leader>dsO", dap.step_out(), { desc = "" })
  vim.keymap.set("n", "<leader>dsi", dap.step_into(), { desc = "" })
  vim.keymap.set("n", "<leader>dso", dap.step_over(), { desc = "" })
  vim.keymap.set("n", "<leader>dS", dap.stop(), { desc = "" })
  vim.keymap.set("n", "<leader>du", dap.up(), { desc = "" })
  vim.keymap.set("n", "<leader>dd", dap.down(), { desc = "" })
  -- vim.keymap.set("n", "<leader>d_", :lua require'dap'.disconnect();require'dap'.stop();require'dap'.run_last()<CR>
  vim.keymap.set("n", "<leader>dr", dap.repl.open({}, "vsplit"), { desc = "" })
  vim.keymap.set("n", "<leader>di", dap.ui.variables.hover(), { desc = "" })
end

return function()
  local dap = require("dap")
  keymaps_config(dap)
end
