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
if vim.loop.os_uname().sysname == "Windows_NT" then
  local powershell_options = {
    shell = vim.fn.executable("pwsh") == 1 and "pwsh" or "powershell",
    shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
    shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
    shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
    shellquote = "",
    shellxquote = "",
  }

  for option, value in pairs(powershell_options) do
    vim.opt[option] = value
  end
end

-- Autocommands

-- Remove trailing whitespaces on save 
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = {"*"},
  callback = function(_ev)
    local save_cursor = vim.fn.getpos(".")
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.setpos(".", save_cursor)
  end,
})
