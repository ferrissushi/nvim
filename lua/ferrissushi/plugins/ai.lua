return {
	{
		"supermaven-inc/supermaven-nvim",
		config = function()
			require("supermaven-nvim").setup({})
            vim.keymap.set("i", "<C-l>", function()
              require("supermaven-nvim.api").accept_suggestion()
            end)
		end,
	},
    -- {
    --     "github/copilot.vim",
    -- }
}
