local opt = vim.opt
local o = vim.o
local g = vim.g


opt.scrolloff = 8
opt.nu = true
opt.guicursor = ""
opt.relativenumber = true
opt.number = true
opt.undofile = true
opt.cursorline = false
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.breakindent = true
opt.ignorecase = true
opt.smartcase = true
opt.clipboard:append("unnamedplus")
opt.splitright = true
opt.splitbelow = true
opt.swapfile = false
opt.tabstop = 4
opt.mouse = "a"
opt.softtabstop = 4
opt.shiftwidth = 4
opt.hlsearch = false
opt.incsearch = true
opt.colorcolumn = "100"
opt.wrap = false
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.termguicolors = true
opt.signcolumn = "yes"
opt.isfname:append("@-@")
opt.updatetime = 250
opt.showmode = false
vim._disable_lua_warnings = true
g.have_nerd_font = true
o.timeoutlen = 200
vim.lsp.inlay_hint.enable(false)
