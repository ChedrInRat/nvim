return require('packer').startup(function()
  use({
    'lewis6991/impatient.nvim',
    config = [[require('impatient')]]
  })

  use('wbthomason/packer.nvim')

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true }
  }
  
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

  -- Tabs
  use{
    'kdheepak/tabline.nvim',
    requires = { 
      {'hoob3rt/lualine.nvim', opt=true },
      {'kyazdani42/nvim-web-devicons', opt = true}
    }
  }
  
  -- Tree 
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', 
    },
    tag = 'nightly' 
}
 
  -- Themes
  use('joshdick/onedark.vim')

end)
