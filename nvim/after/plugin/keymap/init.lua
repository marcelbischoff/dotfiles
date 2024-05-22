local Remap = require("marcel.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
-- local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

nnoremap("<leader>pv", ":Ex<CR>")
nnoremap("<leader>u", ":UndotreeShow<CR>")

vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

nnoremap("Y", "yg$")
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")
nnoremap("J", "mzJ`z")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")
nnoremap("<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
nnoremap("<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
xnoremap("<leader>p", "\"_dP")

-- next greatest remap ever : asbjornHaland
nnoremap("<leader>y", "\"+y")
vnoremap("<leader>y", "\"+y")
nmap("<leader>Y", "\"+Y")

nnoremap("<leader>d", "\"_d")
vnoremap("<leader>d", "\"_d")

vnoremap("<leader>d", "\"_d")

-- open a terminal
nnoremap("<leader>te", ":Lspsaga open_floaterm<CR>")

-- black
nnoremap("<leader>bl", "<cmd>call Black()<cr>")
--inoremap <buffer><silent> <c-q> <cmd>call Black()<cr

vim.api.nvim_create_user_command('Gc', 'execute "Git add -u" | execute "Git commit"', {})

