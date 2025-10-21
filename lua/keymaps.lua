vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>e', vim.cmd.Ex);
vim.keymap.set('n', '<leader>w', vim.cmd.write);
vim.keymap.set('n', '<leader>q', vim.cmd.quit);
vim.keymap.set('n', '<leader>x', vim.cmd.bd);
vim.keymap.set('n', '<leader>t', vim.cmd.term);

vim.keymap.set('n', 'ld', vim.lsp.buf.definition);
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format);

vim.keymap.set({'n', 'v', 'x'}, '<leader>y', '"+y<CR>')
