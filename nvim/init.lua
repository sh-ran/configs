require("config.lazy")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.g.mapleader = " "
vim.cmd("colorscheme rose-pine")
require("config.keymaps")
vim.cmd("set rnu")
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
