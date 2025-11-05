return {
	{
		"projekt0n/github-nvim-theme",
		name = "github-theme",
		priority = 1000,
		lazy = false,
		config = function()
			require("github-theme").setup({
				options = {
					transparent = true,
					terminal_colors = true,
					styles = {
						comments = "italic",
						keywords = "italic",
						strings = "bold",
						operators = "bold",
						variables = "nocombine",
					},
				},
			})
			vim.cmd("colorscheme github_light_high_contrast")
		end,
		opts = {
			groups = {
				all = {
					Folded = { link = "Comment" },
					WinBar = { link = "Normal" },
					WinBarNC = { link = "Comment" },
					LspInlayHint = { link = "LspCodeLens" },
					Pmenu = { link = "Normal" },
					PmenuKind = { bg = nil },
					NormalFloat = { link = "Normal" },
					BlinkCmpMenuBorder = { link = "FloatBorder" },
					BlinkCmpSignatureHelpBorder = { link = "FloatBorder" },
					BlinkCmpDocBorder = { link = "FloatBorder" },
					TelescopeBorder = { link = "Comment" },
					IlluminatedWordRead = { link = "PmenuSel" },
					IlluminatedWordWrite = { link = "PmenuSel" },
					IlluminatedWordText = { link = "PmenuSel" },
				},
			},
		},
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
			require("rose-pine").setup({
			})
		end,
	},
}
