return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			format_after_save = {
				timeout_ms = nil,
				lsp_fallback = true,
			},
			formatters_by_ft = {
				c = { "clang-format" },
				cpp = { "clang-format" },
				lua = { "stylua" },
				go = { "gofmt" },
				javascriptreact = { "eslint_d", "prettier" },
				javascript = { "eslint_d", "prettier" },
				typescript = { "eslint_d", "prettier" },
				typescriptreact = { "eslint_d", "prettier" },
				elixir = { "mix" },
				java = { "google-java-format" },
				rust = { "rustfmt" },
			},
		})
	end,
}
