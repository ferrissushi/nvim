function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
end

return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({ disable_background = true })
			vim.cmd("colorscheme rose-pine")
			ColorMyPencils()
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
}
