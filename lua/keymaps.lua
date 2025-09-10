vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>e', vim.cmd.Ex)
vim.keymap.set('n', '<leader>x', vim.cmd.bd)
vim.keymap.set('n', '<leader>t', vim.cmd.terminal)

vim.keymap.set("v", "<leader>yy", '"+yy<CR>')

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
