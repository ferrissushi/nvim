return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local harpoon = require("harpoon")
      harpoon:setup()
      local nnoremap = require("ferrissushi.utils.remap_funtion").nnoremap;

      nnoremap("<leader>a", function() harpoon:list():add() end)
      nnoremap("<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

      nnoremap("<C-t>", function() harpoon:list():select(1) end)
      nnoremap("<C-n>", function() harpoon:list():select(2) end)
      nnoremap("<C-l>", function() harpoon:list():select(3) end)
      nnoremap("<C-s>", function() harpoon:list():select(4) end)
    end
  }
}
