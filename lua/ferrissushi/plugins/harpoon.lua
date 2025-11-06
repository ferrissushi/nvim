return {
	{
		"ThePrimeagen/harpoon",
		event = "VeryLazy",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			local nnoremap = require("ferrissushi.utils.remap_funtion").nnoremap
			nnoremap("<s-m>", "<cmd>lua require('harpoon.mark').add_file()<cr>")
			nnoremap("<C-e>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>")
			nnoremap("<C-t>", "<cmd>lua require'harpoon.ui'.nav_next()<cr>")
			nnoremap("<C-n>", "<cmd>lua require'harpoon.ui'.nav_prev()<cr>")
		end,
	},
}
