return {
  "gruvw/strudel.nvim",
  build = "npm ci",
  config = function()
    require("strudel").setup(
      {
        browser_exec_path = "/usr/bin/brave-browser",
      }
    )
  end,
}
