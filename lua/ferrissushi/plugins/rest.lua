return {
	"rest-nvim/rest.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	ft = { "http" },
	opts = {},
	config = function()
		package.loaded["mimetypes"] = nil
		require("rest-nvim").setup({})
	end,
}
