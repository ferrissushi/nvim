return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      auto_restore_enabled = false,
      auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
    })

    local keymap = vim.keymap.set
    keymap("n", "<leader>as","<cmd>AutoSession save<CR>", { desc = "Save Session" })
    keymap("n", "<leader>ar","<cmd>AutoSession restore<CR>", { desc = "Load Session" })
    keymap("n", "<leader>aS","<cmd>AutoSession search<CR>", { desc = "Search Session" })
    keymap("n", "<leader>ad", "<cmd>AutoSession delete<CR>", { desc = "Delete Session" })
  end,
}
