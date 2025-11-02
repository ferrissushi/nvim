return {
	"ThePrimeagen/harpoon",
	event = "VeryLazy",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local keymap = vim.keymap.set
		keymap("n", "<s-m>", "<cmd>lua require('harpoon.mark').add_file()<cr>", { desc = "Harpoon Mark File" })
		keymap("n", "<TAB>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", { desc = "Harpoon Toggle Menu" })
	end,
}
