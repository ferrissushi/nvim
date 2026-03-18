return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({ disable_background = true })
            vim.cmd("colorscheme rose-pine")
			vim.cmd([[
    hi Normal guibg=NONE
    hi NormalNC guibg=NONE
    hi TelescopeNormal guibg=NONE
    hi TelescopeBorder guibg=NONE
    hi TelescopePromptNormal guibg=NONE
    hi TelescopePromptBorder guibg=NONE
    hi TelescopePreviewNormal guibg=NONE
    hi TelescopePreviewBorder guibg=NONE
]])
		end,
	},
	{
		"olivercederborg/poimandres.nvim",
		lazy = false,
		priority = 1000,
		config = function()

			require("poimandres").setup({
                disable_background = true,
			})
		end,

		-- optionally set the colorscheme within lazy config
		init = function()
			vim.cmd("colorscheme poimandres")
		end,
	},
}
