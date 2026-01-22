local opt = vim.opt
local o = vim.o
local g = vim.g


opt.scrolloff = 10
opt.nu = true
opt.guicursor = ""
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
opt.tabstop = 4
opt.mouse = "a"
opt.softtabstop = 4
opt.shiftwidth = 4
opt.hlsearch = false
opt.incsearch = true
opt.colorcolumn = "80"
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
vim._disable_lua_warnings = true
g.have_nerd_font = true
o.timeoutlen = 200
o.confirm = true

vim.diagnostic.config({
	virtual_text = true,
	signs = false,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "javascript",
    "typescript",
    "javascriptreact",
    "typescriptreact",
  },
  callback = function()
    -- indentation à 2 espaces
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2

    -- utiliser des espaces au lieu des tabs
    vim.opt_local.expandtab = true

    -- indentation intelligente
    vim.opt_local.smartindent = true
  end,
})

