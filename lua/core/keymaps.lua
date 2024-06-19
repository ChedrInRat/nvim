vim.g.mapleader = ' '

vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('n', 'qq', ':q!<CR>')
vim.keymap.set('n', '<c-s>', ':w<CR>')
vim.keymap.set('n', '<c-q>', ':wq<CR>')

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<esc>', ':nohlsearch<CR>', { noremap = true, silent = true })

