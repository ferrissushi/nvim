return {
	"sotte/presenting.nvim",
	config = function()
		require("presenting").setup({
			options = {

				width = 80,
			},
		})
	end,
	cmd = { "Presenting" },
}
