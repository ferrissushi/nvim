local keymap = vim.keymap
vim.g.mapleader = " "
keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "open native tree" })
keymap.set("n", "J", "mzJ`z")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>tf", "<Plug>PlenaryTestFile", { noremap = false, silent = false })
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- for research command
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set("n", "=ap", "ma=ap'a")

keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

keymap.set("n", "<leader>cf", function()
	require("conform").format({ async = true })
end)

keymap.set("x", "<leader>p", [["_dP]])

keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy the current line"})
keymap.set({ "n", "v" }, "<leader>d", '"_d')
keymap.set("i", "<C-c>", "<Esc>")
keymap.set("n", "Q", "<nop>")
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "replace work under cursor"})
keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

keymap.set("n", "<leader>cpl", "<cmd>CloakPreviewLine<CR>", { desc = "Cloak preview line" })
keymap.set("n", "<leader>cpt", "<cmd>CloakToggle<CR>", { desc = "Cloak toggle" })

-- Prevent the use of arrow keys to improve the experience of moving around in the file
keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')
keymap.set("i", "<left>", '<cmd>echo "Use h to move!!"<CR>')
keymap.set("i", "<right>", '<cmd>echo "Use l to move!!"<CR>')
keymap.set("i", "<up>", '<cmd>echo "Use k to move!!"<CR>')
keymap.set("i", "<down>", '<cmd>echo "Use j to move!!"<CR>')

keymap.set("n", "x", '"_x')
keymap.set("v", "x", '"_x')

-- revert go up and down by page command
keymap.set("n", "<C-f>", "<C-b>")
keymap.set("n", "<C-b>", "<C-f>")

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
keymap.set("n", "<C-h>", "<C-w>w")
