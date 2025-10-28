return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	events = { "BufReadPost", "BufNewFile" },
	opts = {
		exclude = {
			buftypes = { "terminal", "nofile" },

			filetypes = {
				"help",
				"lazy",
				"TelescopePrompt",
			},
		},
		scope = {
			show_start = false,
			show_end = false,
			highlight = { "keyword" },
			char = "▏",
			include = {
				node_type = {
					lua = { "table_constructor" },
				},
			},
		},
    whitespace = {
      remove_blankline_trail = true,
    },
    indent = { char = "▏" },
	},
}
