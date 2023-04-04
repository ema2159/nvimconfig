vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.autoread = true

-- Use spaces for tabs and whatnot
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

-- Make current buffer's directory the cwd
vim.opt.autochdir = true

-- Set formatting options
vim.opt.textwidth = 120
vim.cmd([[filetype plugin on]])
vim.cmd([[autocmd FileType * setlocal formatoptions-=ro]])

-- Set termguicolors
vim.opt.termguicolors = true

-- Set GUI font
vim.opt.guifont = { "JetBrainsMono NFM", ":h12" }

-- Set default shell for Windows as Powershell
if vim.fn.has("win32") then
  vim.opt.shell = "powershell.exe"
  vim.opt.shellcmdflag = "-command"
  vim.opt.shellquote = "\""
  vim.opt.shellxquote = ""
end
