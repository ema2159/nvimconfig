return function()
  require("Comment").setup({
    sticky = false,
    toggler = {
      line = "<C-c>", -- C-7
    },
    opleader = {
      line = "<C-c>", -- C-7
    },
    post_hook = function()
      vim.cmd("norm! j")
    end,
  })
end
