-- NeoTree
vim.keymap.set('n', 'tt', ':Neotree<CR>')
vim.keymap.set('n', 'ct', ':Neotree close<CR>')

--Tabs
vim.keymap.set('n', '<Tab>', ':BufferNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferPrevious<CR>')
vim.keymap.set('n', 'q<Tab>', ':BufferClose<CR>')
vim.keymap.set('n', 'x<Tab>', ':bdelete!<CR>')

-- Terminal
vim.keymap.set('n', 'trm', ':ToggleTerm<CR>')


-- Find 
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})