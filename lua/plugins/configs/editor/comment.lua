return function()
  require("Comment").setup({
    sticky = false,
    toggler = {
      line = "<C-_>", -- C-7
      block = "<leader>c",
    },
    opleader = {
      line = "<C-_>", -- C-7
      block = "<leader>c",
    },
    post_hook = function()
      vim.cmd("norm! j")
    end,
  })
end
