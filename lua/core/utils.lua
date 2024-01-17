local M = {}

local enabled = true
function M.toggle_diagnostics()
  enabled = not enabled
  if enabled then
    vim.diagnostic.enable()
  else
    vim.diagnostic.disable()
  end
end

return M
