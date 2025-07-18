return {
  {
    'nvim-treesitter/nvim-treesitter',
    config = function ()
      require('nvim-treesitter.configs').setup{
       ensure_installed = {
         'lua',
         'html',
         'python',
         'go',
         'rust',
         'css',
         'json',
         'javascript',
         'typescript',
         'tsx',
         'vim',
         'dockerfile',
         'gitignore',
         'sql'
       },

        sync_install = false,
        auto_install = true,
        highlight = {
          enable = true,
        },
      }
    end
  }
}
