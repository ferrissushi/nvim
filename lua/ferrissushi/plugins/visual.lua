return {
	{
		"akinsho/bufferline.nvim",
    enabled = false,
		dependencies = { "nvim-tree/nvim-web-devicons" },
		version = "*",
		opts = {
			options = {
				mode = "tabs",
				separator_style = "slant",
			},
		},
	},
	{
		"szw/vim-maximizer",
		keys = {
			{ "<leader>sE", "<cmd>MaximizerToggle<CR>", desc = "Maximize/minimize a split" },
		},
	},
}
