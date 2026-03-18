return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				c = { "clang" },
				cpp = { "ast-grep" },
				lua = { "stylua" },
				go = { "gofumpt" },
				javascriptreact = { "biome" },
				javascript = { "biome" },
				typescript = { "biome" },
				typescriptreact = { "biome" },
				rust = { "rustfmt" },
			},
		})
	end,
}
