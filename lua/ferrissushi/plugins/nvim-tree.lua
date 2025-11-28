return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
  enabled = false,
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			sort_by = "case_sensitive",

			view = {
				float = {
					enable = true,
					open_win_config = function()
						local columns = vim.o.columns
						local lines = vim.o.lines
						local width = math.floor(columns * 0.6)
						local height = math.floor(lines * 0.6)
						return {
							relative = "editor",
							border = "rounded",
							width = width,
							height = height,
							row = (lines - height) * 0.5, -- centré verticalement
							col = (columns - width) * 0.5, -- centré horizontalement
						}
					end,
				},
				width = function()
					return math.floor(vim.o.columns * 0.6)
				end,
			},

			renderer = {
				group_empty = true,
			},

			filters = {
				dotfiles = false,
			},

			on_attach = function(bufnr)
				local api = require("nvim-tree.api")

				local function opts(desc)
					return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
				end

				-- exemples :
				vim.keymap.set("n", "<CR>", api.node.open.edit, opts("Open"))
				vim.keymap.set("n", "q", api.tree.close, opts("Close"))
				vim.keymap.set("n", "a", api.fs.create, opts("Create"))
				vim.keymap.set("n", "d", api.fs.remove, opts("Delete"))
				vim.keymap.set("n", "r", api.fs.rename, opts("Rename"))
				vim.keymap.set("n", "x", api.fs.cut, opts("Cut"))
				vim.keymap.set("n", "y", api.fs.copy.filename, opts("Copy Name"))
				vim.keymap.set("n", "p", api.fs.paste, opts("Paste"))
			end,
		})
	end,
}
