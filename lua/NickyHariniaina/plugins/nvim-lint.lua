return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters_by_ft = {
			typescript = { "eslint_d" },
			javascript = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			sql = { "postgrestools" },
			json = { "json" },
			rust = { "ast-grep" },
			java = { "ast-grep" },
			css = { "ast-grep" },
			html = { "ast-grep" },
			openapi = { "vacuum" },
		}
	end,
}
