vim.opt.scrolloff = 10
vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.undofile = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.backspace = "indent,eol,start"
vim.opt.clipboard:append("unnamedplus")
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.swapfile = false
vim.opt.tabstop = 2
vim.opt.mouse = ""
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.colorcolumn = "100"
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.clipboard:append("unnamedplus")
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.showmode = false

vim.diagnostic.config({
	virtual_text = true,
	signs = false,
	set_loclist = false,
  update_in_insert = false,
	severity_sort = true,
})
