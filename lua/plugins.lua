vim.pack.add({
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'main' },
  { src = 'https://github.com/nvim-mini/mini.pick' },
  { src = 'https://github.com/nvim-mini/mini.completion' },
  { src = 'https://github.com/lewis6991/gitsigns.nvim' },
  { src = 'https://github.com/folke/tokyonight.nvim' },
});

require('tokyonight').setup({
  styles = {
    keywords = { italic = false },
  }
})
vim.cmd('colorscheme tokyonight-night');

require('gitsigns').setup()
require('mini.completion').setup()
require('mini.pick').setup()
vim.keymap.set('n', '<leader>pf', ':Pick files<CR>');
vim.keymap.set('n', '<leader>ps', ':Pick grep_live<CR>');
vim.keymap.set('n', '<leader>pb', ':Pick buffer<CR>');

local languages = {
  'lua', 'go', 'vue', 'html', 'scss', 'css', 'typescript', 'javascript', 'typescriptreact', 'javascriptreact'
}
require('nvim-treesitter').install(languages);
vim.api.nvim_create_autocmd('FileType', {
  pattern = languages,
  callback = function() vim.treesitter.start() end,
})
