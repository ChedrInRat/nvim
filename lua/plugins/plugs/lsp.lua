return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{ "jay-babu/mason-nvim-dap.nvim", dependencies = {
		"mfussenegger/nvim-dap",
	} },
	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"nvimtools/none-ls.nvim",
		},
	},
	{ "WhoIsSethDaniel/mason-tool-installer.nvim" },
}
