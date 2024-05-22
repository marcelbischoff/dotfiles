vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes:1"

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.colorcolumn = "88"

vim.g.mapleader = " "
vim.opt.background = "dark"

vim.cmd "autocmd BufNewFile,BufRead *.🐍 setfiletype python"
