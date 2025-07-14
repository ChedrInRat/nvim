local set = vim.keymap.set

-- Oil
set('n', '|', ':Oil --float<CR>')

-- Tabs
set('n', '<tab>', ':BufferNext<CR>')
set('n', '<s-tab>', ':BufferPrevious<CR>')
set('n', 'q<tab>', ':BufferClose<CR>')

-- Terminal
set('n', 'trm', ':ToggleTerm<CR>')

--Telescope
local builtin = require('telescope.builtin')
set('n', '<leader>ff', builtin.find_files, {})
set('n', '<leader>fg', builtin.live_grep, {})
set('n', '<leader>fb', builtin.buffers, {})
set('n', '<leader>fh', builtin.help_tags, {})


-- Resession
local resession = require("resession")

set('n', '<leader>ss', resession.save)
set('n', '<leader>sl', resession.load)
set('n', '<leader>sd', resession.delete)

--LSP
vim.api.nvim_set_keymap('n', '<leader>d', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', '<cmd>lua vim.diagnostic.setqflist()<CR>', { noremap = true, silent = true })
