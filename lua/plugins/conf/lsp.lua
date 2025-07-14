local mlsp = require("mason-lspconfig")
local capabilities = vim.lsp.protocol.make_client_capabilities()
local cpb = require("cmp_nvim_lsp").default_capabilities(capabilities)

require("mason").setup({})

mlsp.setup({
	ensure_isntalled = {
		"pyright",
		"sqls",
		"lua_ls",
	},
})

require("mason-nvim-dap").setup({})

require("mason-tool-installer").setup({})
