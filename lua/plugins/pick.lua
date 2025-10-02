require('mini.pick').setup()

vim.keymap.set('n', '<leader>pf', ':Pick files<CR>')
vim.keymap.set('n', '<leader>pb', ':Pick buffers<CR>')
vim.keymap.set('n', '<leader>pg', ":Pick files tool='git'<CR>")
vim.keymap.set('n', '<leader>ps', ":Pick grep_live<CR>")
