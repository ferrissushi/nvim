vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 10 -- number of lines to keep above/below cursor
vim.opt.number = true -- shows absolute line number on cursor line (when relative number is on)
vim.opt.undofile = true -- Enable undo for a file even if it was closed
vim.opt.cursorline = true -- highlight current line
vim.opt.expandtab = true -- expand tab to spaces
vim.opt.autoindent = true -- copy indent from current line when starting new one
vim.opt.smartindent = true -- enable smart indentation
vim.opt.breakindent = true -- enable line breaking indentation
vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
vim.opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position
vim.opt.clipboard:append("unnamedplus") -- use system clipboard as default register
vim.opt.splitright = true -- split vertical window to the right
vim.opt.splitbelow = true -- split horizontal window to the bottom
vim.opt.swapfile = false
vim.cmd('let &t_Cs = "\\e[4:3m"')
vim.cmd('let &t_Ce = "\\e[4:0m"')
vim.opt.tabstop = 2
vim.opt.mouse = ""
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 200
vim.opt.colorcolumn = "100"
vim.opt.clipboard:append("unnamedplus")

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  set_loclist = false,
  severity_sort = true,
  update_in_insert = true,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "qf",
  callback = function()
    vim.schedule(function()
      vim.cmd("cclose")
    end)
  end
})

