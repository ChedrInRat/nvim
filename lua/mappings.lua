vim.g.mapleader = ' '

-- VIM
vim.keymap.set('i', 'jj', '<Esc>') 
vim.keymap.set('n', 'qq', ':q!<CR>') 
vim.keymap.set('n', '<c-s>', ':w<CR>') 
vim.keymap.set('n', '<c-q>', ':wq<CR>')
vim.keymap.set('n', 'aq', ':qa<CR>')
-- NEOTREE
vim.keymap.set('n', 'tt', ':Neotree<CR>')
vim.keymap.set('n', 'ct', ':Neotree close<CR>')
-- TERM
vim.keymap.set('n', 'trm', ':terminal<CR>')
-- TABS
vim.keymap.set('n', '<Tab>', ':BufferNext<CR>')
vim.keymap.set('n','<s-Tab>',':BufferPrevious<CR>')
vim.keymap.set('n','x<Tab>', ':BufferClose<CR>')
vim.keymap.set('n', 'q<Tab>', ':bdelete!<CR>')
-- SEARCH 

