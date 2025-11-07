local opt = vim.opt
local o = vim.o
local g = vim.g

vim.g.lazyvim_eslint_auto_format = true

o.laststatus = 3
o.splitkeep = 'screen'
o.clipboard = 'unnamedplus'
o.expandtab = true
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2
o.ignorecase = true
o.smartcase = true
o.mouse = 'a'
o.splitbelow = true
o.splitright = true
o.timeoutlen = 400
o.undofile = true
o.updatetime = 250

opt.shortmess:append('sI')
opt.whichwrap:append('<>[]hl')
opt.fillchars = { eob = ' ' }
opt.relativenumber = true
opt.ruler = false
opt.signcolumn = 'yes'
opt.numberwidth = 2
opt.cursorline = true
opt.cursorlineopt = 'number'
opt.winborder = 'rounded'
opt.list = true
opt.showmode = false
opt.termguicolors = true
opt.smoothscroll = true

g.mapleader = ' '
g.maplocalleader = ' '
g.loaded_node_provider = 0
g.loaded_python3_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0

local is_windows = vim.fn.has('win32') ~= 0
local sep = is_windows and '\\' or '/'
local delim = is_windows and ';' or ':'
vim.env.PATH = table.concat({ vim.fn.stdpath('data'), 'mason', 'bin' }, sep) .. delim .. vim.env.PATH
