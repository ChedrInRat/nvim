vim.opt.wrap = false

-- Mouse
vim.opt.mouse = "a"
vim.opt.mousefocus = true

-- Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true

vim.wo.number = true
vim.wo.relativenumber = true

-- Indent Settings
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true

-- Color
vim.cmd.termguicolors = true
vim.cmd[[
  colorscheme kanagawa-dragon
]]

-- Filetypes Indent
vim.cmd[[
  autocmd FileType html,сss,lua setlocal shiftwidth=2 tabstop=2 softtabstop=2
]]

