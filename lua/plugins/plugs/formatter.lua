return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "autopep8" },
			},
			format_on_save = {
				timeout_ms = 50,
				lsp_format = "fallback",
			},
		},
	},
}
