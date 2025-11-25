return {
  {
    dir = "~/menu.nvim",
    lazy = true,
    config = function ()
      require("menu").open("", {
        mouse = true,
        border = false,
      })
      local norremap = require("ferrissushi.utils.remap_funtion").nnoremap;
      norremap( "<C-,", function()
        require("menu").open("default")
      end, {})
    end
  },
  {
    dir = "~/typr.nvim",
    opts = {},
    cmd = { "Typr", "TyprStats" },
  },
  {
    dir = "~/minty.nvim",
    cmd = { "Shades", "Huefy" },
    config = function ()
    end
  },
  {
    dir = "~/volt.nvim",
    config = function ()
    end
  },
  {
    dir = "~/nightfox.nvim",
    config = function ()
      vim.cmd("colorscheme carbonfox")
      require("nightfox").setup({
        options = {
        }
      })
    end
  },
}
