return function()
  local null_ls = require("null-ls")

  null_ls.setup({
    sources = {
      null_ls.builtins.diagnostics.ruff.with({
        method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
      }),
    },
  })
end
