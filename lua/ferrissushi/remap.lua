local nnoremap = require("ferrissushi.utils.remap_funtion").nnoremap
local xnoremap = require("ferrissushi.utils.remap_funtion").xnoremap
local inoremap = require("ferrissushi.utils.remap_funtion").inoremap
local vnoremap = require("ferrissushi.utils.remap_funtion").vnoremap

vim.g.mapleader = " "

vnoremap("x", '"_x')
vnoremap("K", ":m '<-2<CR>gv=gv")
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("<leader>d", '"_d')
xnoremap("<leader>p", [["_dP]])
inoremap("<C-c>", "<Esc>")
inoremap("<left>", '<cmd>echo "Use h to move!!"<CR>')
inoremap("<right>", '<cmd>echo "Use l to move!!"<CR>')
inoremap("<up>", '<cmd>echo "Use k to move!!"<CR>')
inoremap("<down>", '<cmd>echo "Use j to move!!"<CR>')
nnoremap("<leader>d", '"_d')
nnoremap("Q", "<nop>") -- Disable entering in the Ex-mode
nnoremap("<leader>k", "<cmd>lnext<CR>zz")
nnoremap("<leader>j", "<cmd>lprev<CR>zz")
nnoremap(
  "<leader>s",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "replace work under cursor" }
)
nnoremap("<leader>cpl", "<cmd>CloakPreviewLine<CR>", { desc = "Cloak preview line" })
nnoremap("<leader>cpt", "<cmd>CloakToggle<CR>", { desc = "Cloak toggle" })
nnoremap("<left>", '<cmd>echo "Use h to move!!"<CR>')
nnoremap("<right>", '<cmd>echo "Use l to move!!"<CR>')
nnoremap("<up>", '<cmd>echo "Use k to move!!"<CR>')
nnoremap("<down>", '<cmd>echo "Use j to move!!"<CR>')
nnoremap("x", '"_x')
nnoremap("<C-f>", "<C-b>")
nnoremap("<C-b>", "<C-f>")
nnoremap("<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
nnoremap("<leader>+", "<C-a>", { desc = "Increment number" })
nnoremap("<leader>-", "<C-x>", { desc = "Decrement number" })
nnoremap("<leader>sv", "<C-w>v", { desc = "Split window vertically" })
nnoremap("<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
nnoremap("<leader>se", "<C-w>=", { desc = "Make splits equal size" })
nnoremap("<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
nnoremap("<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
nnoremap("<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
nnoremap("<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
nnoremap("<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
nnoremap("<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
nnoremap("<C-h>", "<C-w>w")
nnoremap("J", "mzJ`z") nnoremap("<leader>m", "@") nnoremap("<C-u>", "<C-u>zz") nnoremap("<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true }) nnoremap("<C-d>", "<C-d>zz") nnoremap("n", "nzzzv") nnoremap("N", "Nzzzv") nnoremap("=ap", "ma=ap'a") nnoremap("<leader>zig", "<cmd>LspRestart<cr>") nnoremap("<leader>cf", function() require("conform").format({ async = true }) end) nnoremap("<leader>Y", [["+Y]], { desc = "Copy the current line" })
