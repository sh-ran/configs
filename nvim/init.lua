require("config.lazy")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.g.mapleader = " "
vim.cmd("colorscheme cole")
require("config.keymaps")
vim.cmd("set rnu")
-- vim.cmd("let g:rustfmt_autosave=1")
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.cmd("set pumheight=15")
vim.opt.guicursor = ""
vim.diagnostic.config({ virtual_text = false, signs = true, underline = false })
vim.keymap.set('n', '<leader>w', ':wa<CR>')
vim.keymap.set('n', '<leader>wq', ':wqa<CR>')
