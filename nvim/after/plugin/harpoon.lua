local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set('n', '<C-a>', function() harpoon:list():add() end)
vim.keymap.set('n', '<C-e>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set('n', '<C-n>', function() harpoon:list():next() end)
vim.keymap.set('n', '<C-p>', function() harpoon:list():prev() end)
