vim.cmd('syntax enable')
vim.cmd('filetype plugin on')
vim.cmd('filetype plugin indent on')
vim.opt.compatible = false

vim.opt.clipboard = 'unnamedplus'

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.numberwidth = 2
vim.opt.signcolumn = "yes"

vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.scrolloff = 8
vim.opt.termguicolors = true
vim.opt.path = ".,**"
vim.opt.wildmenu = true

vim.o.list = true
vim.o.listchars = 'space:·,tab:-->,trail:·,extends:>,precedes:<'

