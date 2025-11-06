return {
	{
		"mrcjkb/rustaceanvim",
		version = "^6",
		lazy = false,
	},
	{
		"nwiizo/cargo.nvim",
		build = "cargo build --release",
		config = function()
			require("cargo").setup({
				float_window = true,
				window_width = 0.8,
				window_height = 0.8,
				border = "rounded",
			})
		end,

		cmd = {
			"CargoBench",
			"CargoBuild",
			"CargoClean",
			"CargoDoc",
			"CargoNew",
			"CargoRun",
			"CargoRunTerm",
			"CargoTest",
			"CargoUpdate",
			"CargoCheck",
			"CargoClippy",
			"CargoAdd",
			"CargoRemove",
			"CargoFmt",
			"CargoFix",
		},
	},
	{
		"saecki/crates.nvim",
		event = { "BufRead Cargo.toml" },
		config = function()
			require("crates").setup()
		end,
	},
}
