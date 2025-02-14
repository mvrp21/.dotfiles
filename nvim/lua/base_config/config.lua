vim.opt.guicursor = ''
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.listchars = { tab = '» ', extends = '›', precedes = '‹', nbsp = '·', trail = '·' }
vim.opt.list = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.local/cache/nvim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.scl = 'no'

vim.opt.cmdheight = 0

vim.opt.scrolloff = 10
vim.opt.isfname:append('@-@')

vim.opt.updatetime = 50

vim.g.mapleader = '  '

vim.o.cursorline = true
vim.o.cursorcolumn = true
