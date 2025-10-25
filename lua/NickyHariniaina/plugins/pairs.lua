return {
	"echasnovski/mini.pairs",
	opts = {
		modes = { insert = true, command = true, terminal = false },
	},
	config = function()
		require("mini.pairs").setup()
	end,
}
