return function()
  require("Comment").setup({
    sticky = false,
    toggler = {
      line = "<C-7>", -- C-7
      block = "<leader>c",
    },
    opleader = {
      line = "<C-7>", -- C-7
      block = "<leader>c",
    },
    post_hook = function()
      vim.cmd("norm! j")
    end,
  })
end
