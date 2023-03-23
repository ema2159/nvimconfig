vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = "nvi"
vim.opt.whichwrap = "b,s,<,>,[,]"

-- Set line numbers
vim.wo.number = true
vim.wo.cursorline = true
vim.wo.cursorlineopt = "number"
