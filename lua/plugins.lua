vim.pack.add({
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'main' },
  { src = 'https://github.com/nvim-lua/plenary.nvim' },
  { src = 'https://github.com/nvim-telescope/telescope.nvim' },
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

require('telescope') .setup()
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files);
vim.keymap.set('n', '<leader>ps', builtin.live_grep);
vim.keymap.set('n', '<leader>pb', builtin.buffers);
vim.keymap.set('n', '<leader>pt', builtin.diagnostics);

local languages = {
  'lua', 'go'
}
require('nvim-treesitter').install(languages);
vim.api.nvim_create_autocmd('FileType', {
  pattern = languages,
  callback = function() vim.treesitter.start() end,
})

