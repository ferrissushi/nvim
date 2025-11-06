-- This ain't working rn, i should debugt it later
function SetBgTransparent()
  vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
end

return {
	{
		"kdheepak/monochrome.nvim",
		config = function()
			vim.cmd("colorscheme monochrome")
      SetBgTransparent()
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
			vim.cmd("colorscheme everforest")
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				styles = {
					transparency = true,
				},
			})
		end,
	},
}
