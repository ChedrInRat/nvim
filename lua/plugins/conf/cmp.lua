local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
	sources = {
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "calc" },
		{ name = "path" },
		{ name = "cmdline" },
		{ name = "luasnip" },
		{ name = "sql", keyword_length = 2 },
		{ name = "treesitter", keyword_length = 2 },
		{ name = "ctags", keyword_length = 2 },
		{ name = "dictionary", keyword_length = 2 },
		{ name = "dotenv", keyword_length = 2 },
	},
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
			vim.snippet.expand(args.body)
		end,
	},

	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),

	sorting = {
		priority_weight = 2,
		comparators = {
			cmp.config.compare.offset,
			cmp.config.compare.exact,
			cmp.config.compare.score,
			cmp.config.compare.recently_used,
			cmp.config.compare.locality,
			cmp.config.compare.kind,
			cmp.config.compare.sort_text,
			cmp.config.compare.length,
			cmp.config.compare.order,
		},
	},
})

require("cmp_dictionary").setup({
	exact_length = 2,
})
