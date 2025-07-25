local m = require('mason-lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
local cpb = require('cmp_nvim_lsp').default_capabilities(capabilities)

local lspconfig = require('lspconfig')

m.setup({
    ensure_installed = {
      'lua_ls',
      'rust_analyzer',
      'pyright',
      'sqls',
      'marksman',
      'gopls',
      'clangd',
      'cssls'
      },

})
