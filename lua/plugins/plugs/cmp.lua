return {
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/cmp-calc",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-buffer",
			{ "L3MON4D3/LuaSnip", build = "make install_jsregexp" },
			"saadparwaiz1/cmp_luasnip",
			"ray-x/cmp-sql",
			"ray-x/cmp-treesitter",
			"quangnguyen30192/cmp-nvim-tags",
			"uga-rosa/cmp-dictionary",
			"SergioRibera/cmp-dotenv",
			"onsails/lspkind.nvim",
			"rafamadriz/friendly-snippets",
		},
	},
}
