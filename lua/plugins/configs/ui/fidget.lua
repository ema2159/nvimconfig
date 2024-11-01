return function()
  require("fidget").setup({
    progress = {
      display = {
        progress_icon = { pattern = "dots_negative", period = 1 },
      },
    },
  })
end
