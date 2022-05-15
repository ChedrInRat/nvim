vim.o.encoding = "utf-8"
vim.o.swapfile = false

vim.o.number = true
vim.o.relativenumber = true
vim.o.numberwidth = 3

vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.autoindent = true
vim.o.smartindent = true
vim.o.expandtab = true

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4


local cmd = vim.api.nvim_command

cmd('autocmd Filetype lua setlocal ts=2 sw=2 sts=2')
cmd('autocmd Filetype docker setlocal ts=2 sw=2 sts=2')
cmd('autocmd Filetype javascript setlocal ts=2 sw=2 sts=2')
cmd('autocmd Filetype html setlocal ts=2 sw=2 sts=2')
cmd('autocmd Filetype css setlocal ts=2 sw=2 sts=2')
