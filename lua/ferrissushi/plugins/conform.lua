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
				javascriptreact = { "prettier" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				typescriptreact = { "prettier" },
				rust = { "rustfmt" },
			},
		})
	end,
}
