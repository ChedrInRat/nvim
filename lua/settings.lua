local functions = require('functions')
local lspconfig = require('lspconfig')

-- LSP configuration
local lsp_servers = {
  'pyright', -- Python
  'tsserver', -- JS, TS
  'rust_analyzer', -- Rust
  'gopls', -- GO
  'html', -- HTML
  'cssls', -- CSS
  'dockerls' -- Docker
}

require('nvim-lsp-installer').setup({
  ensure_installed = lsp_servers,
  automatic_installation = true,
  ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})

local coq = require('coq')

for _, server in ipairs(lsp_servers) do
  lspconfig[server].setup(coq.lsp_ensure_capabilities{
  })
end


-- Comment configuration
require('nvim_comment').setup{}

-- Autopairs configuration
require('nvim-autopairs').setup{}

require('nvim-tree').setup()


-- COQ start
vim.cmd('COQnow -s')
