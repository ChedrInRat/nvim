local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- THEMES
  {'rose-pine/neovim', name='rose-pine'}, {'rebelot/kanagawa.nvim'},
  -- BUFFER
  {'akinsho/bufferline.nvim', version="*", dependencies='nvim-tree/nvim-web-devicons'},
  {'tiagovla/scope.nvim'},
  -- BAR
  { "utilyre/barbecue.nvim", name = "barbecue", version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {
      -- configurations go here
    },
  },
  -- LSP
  {'williamboman/mason.nvim'}, {'williamboman/mason-lspconfig.nvim'}, {'neovim/nvim-lspconfig'},
  -- HIGHLIGHT 
  {'nvim-treesitter/nvim-treesitter'},
  -- TREE
  {"nvim-neo-tree/neo-tree.nvim", branch="v3.x", dependencies={"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim",}},
  -- CMP
  {'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'},
  {'hrsh7th/cmp-cmdline'}, {'hrsh7th/nvim-cmp'}, {'lewis6991/gitsigns.nvim'},
  {'hrsh7th/cmp-nvim-lsp-signature-help'},
  -- SNIPPETS 
  {'hrsh7th/cmp-vsnip'}, {'hrsh7th/vim-vsnip'},
  -- COMMENT
  {'numToStr/Comment.nvim', opts = {} },
  -- SEARCH
  {'nvim-telescope/telescope.nvim', tag = '0.1.4', dependencies = { 'nvim-lua/plenary.nvim' }},
  { "ibhagwan/fzf-lua", dependencies = { "nvim-tree/nvim-web-devicons" }, config = function()
    require("fzf-lua").setup({})
  end
  },
  -- TERM
  {'akinsho/toggleterm.nvim', version = "*", config = true},
  -- OTHER
  {'windwp/nvim-autopairs', event="InsertEnter", opts={}},
  {'stevearc/resession.nvim',
    lazy = false,
    dependencies = {
        {
            'tiagovla/scope.nvim',
            lazy = false,
            config = true,
        },
    },
  },
  {'simrat39/rust-tools.nvim'},
})
