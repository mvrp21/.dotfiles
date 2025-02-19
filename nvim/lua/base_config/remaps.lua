vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>p', vim.cmd.Ex)
vim.keymap.set('n', '<leader>v', vim.cmd.vs)
vim.keymap.set('n', '<leader>s', vim.cmd.sv)

-- move visual selection up or down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- do not move cursor when concatenating lines below
vim.keymap.set('n', 'J', 'mzJ`z')

-- keep cursor centered when using jumps
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', '+', '<C-W>>')
vim.keymap.set('n', '_', '<C-W><')

-- paste buffer over selection without overriding it
-- (never actually use this...) vim.keymap.set('x', '<C-p>', '"_dP')

-- copy to system clipboard with Y
vim.keymap.set('v', 'Y', '"+y')

-- lol
vim.keymap.set('n', 'Q', '<nop>')

-- this one's nice ngl, could be a more elaborate fn but nah
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- pane movement done right
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')

-- let's try tabs
vim.keymap.set('n', '<C-t><C-t>', ':tab split<CR>')
vim.keymap.set('n', '<C-t><C-p>', ':tabprevious<CR>')
vim.keymap.set('n', '<C-t><C-n>', ':tabnext<CR>')

-- don't laugh, it's not funny
vim.api.nvim_create_user_command('Q', 'silent q', { nargs = 0 })
vim.api.nvim_create_user_command('Qw', 'silent wq', { nargs = 0 })
vim.api.nvim_create_user_command('QW', 'silent wq', { nargs = 0 })
vim.api.nvim_create_user_command('W', 'silent w', { nargs = 0 })
vim.api.nvim_create_user_command('Wq', 'silent wq', { nargs = 0 })
vim.api.nvim_create_user_command('WQ', 'silent wq', { nargs = 0 })
vim.api.nvim_create_user_command('VS', 'silent vs', { nargs = 0 })
vim.api.nvim_create_user_command('Vs', 'silent vs', { nargs = 0 })
vim.api.nvim_create_user_command('SV', 'silent sv', { nargs = 0 })
vim.api.nvim_create_user_command('Sv', 'silent sv', { nargs = 0 })
