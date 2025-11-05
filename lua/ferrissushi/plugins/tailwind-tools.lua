-- tailwind-tools.lua
return {
	"luckasRanarison/tailwind-tools.nvim",
	name = "tailwind-tools",
	build = ":UpdateRemotePlugins",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-telescope/telescope.nvim",
		"neovim/nvim-lspconfig",
	},
	ft = { "html", "css", "javascript", "typescript", "svelte", "vue", "react", "tsx", "jsx" },
	opts = {},
}
