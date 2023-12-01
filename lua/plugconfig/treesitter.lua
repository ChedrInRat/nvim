require('nvim-treesitter.configs').setup{
  ensure_installed = {
    'lua',
    'python',
    'rust',
    'markdown',
    'typescript',
    'javascript',
    'tsx',
  },
  
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
