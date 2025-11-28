return {
  {
    dir = "~/project/present.nvim",
    config = function ()
    end
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
      require("nightfox").setup({
        options = {
        }
      })
    end
  },
}
