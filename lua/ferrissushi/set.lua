local opt = vim.opt
local cmd = vim.cmd
local o = vim.o
local g = vim.g

opt.scrolloff = 10
opt.guicursor = ""
opt.nu = true
opt.relativenumber = true
opt.number = true
opt.undofile = true
opt.cursorline = true
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.breakindent = true
opt.ignorecase = true
opt.smartcase = true
opt.backspace = "indent,eol,start"
opt.clipboard:append("unnamedplus")
opt.splitright = true
opt.splitbelow = true
opt.swapfile = false
opt.tabstop = 2
opt.mouse = "a"
opt.softtabstop = 2
opt.shiftwidth = 2
opt.hlsearch = false
opt.incsearch = true
opt.colorcolumn = "100"
opt.wrap = false
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.clipboard:append("unnamedplus")
opt.termguicolors = true
opt.signcolumn = "yes"
opt.isfname:append("@-@")
opt.updatetime = 50
opt.showmode = false
g.have_nerd_font = true
o.timeoutlen = 200
o.confirm = true
cmd([[let &t_Cs = "\e[4:3m"]])
cmd([[let &t_Ce = "\e[4:0m"]])

vim.diagnostic.config({
	virtual_text = true,
	signs = false,
})

