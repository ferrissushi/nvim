return {
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
        }
      }
    })
    vim.cmd("colorscheme github_light_high_contrast")
  end,
}
