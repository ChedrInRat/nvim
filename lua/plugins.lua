return require('packer').startup(function()
  use({
    'lewis6991/impatient.nvim',
    config = [[require('impatient')]]
  })

  use('wbthomason/packer.nvim')
  
  -- LSP
  use
  {
    'williamboman/nvim-lsp-installer',
    'neovim/nvim-lspconfig',
  }

  use{
    'ms-jpq/coq_nvim', -- AutoCompletion
    'ms-jpq/coq.artifacts', -- Snippets
  } 

  -- Git integration
  use{
    'tpope/vim-fugitive',
    'tpope/vim-rhubarb',
  }

  -- Comment
  use{'terrortylor/nvim-comment'}

  -- Autopair
  use{'windwp/nvim-autopairs'}

  -- Tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {'kyazdani42/nvim-web-devicons'},
    tag = 'nightly',
  } 

  -- Tabs
  use 
  {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'},
  }

  -- Themes
  use('joshdick/onedark.vim')

end)
