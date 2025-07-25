vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.wo.number = true -- Line numbers
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.laststatus = 2
vim.opt.autoread = true
vim.opt.tabstop = 4 -- default 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.cmd [[ set noswapfile ]]

--change core/plugin-config/lualine.lua theme after selecting one of the themes below.
--vim.cmd.colorscheme 'tokyonight'
vim.cmd.colorscheme 'catppuccin'
--vim.cmd.colorscheme 'onedark'
--vim.cmd.colorscheme 'vscode'
--vim.cmd.colorscheme 'gruvbox'