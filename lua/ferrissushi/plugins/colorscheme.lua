return {
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        undercurl = true,
      })
    end
  },
	{
		"kdheepak/monochrome.nvim",
		config = function()
		end,
	},
	{
		"projekt0n/github-nvim-theme",
		name = "github-theme",
		config = function()
			require("github-theme").setup({})
		end,
	},
	{
		"sainnhe/everforest",
		config = function()
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				styles = {
				},
			})
		end,
	},
}
