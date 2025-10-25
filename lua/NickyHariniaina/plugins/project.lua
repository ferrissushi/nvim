return {
	"ahmedkhalf/project.nvim",
	config = function()
		require("project_nvim").setup({
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		})

    -- This line is to use it with telescope. It provide the :Telescope projects command
		require("telescope").load_extension("projects")
	end,
}
