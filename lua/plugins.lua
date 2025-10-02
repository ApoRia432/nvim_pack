local plugins = {
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'main' },
  { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
  { src = 'https://github.com/stevearc/oil.nvim' },
  { src = 'https://github.com/saghen/blink.cmp' },
  { src = 'https://github.com/rafamadriz/friendly-snippets' },
  { src = 'https://github.com/nvim-mini/mini.pick' },
  { src = 'https://github.com/lewis6991/gitsigns.nvim' },
  { src = 'https://github.com/folke/trouble.nvim' },
  { src = 'https://github.com/rachartier/tiny-inline-diagnostic.nvim' },
  -- 'https://github.com/akinsho/bufferline.nvim',
  -- { src = 'https://github.com/lukas-reineke/indent-blankline.nvim' },
}

vim.pack.add(plugins)
-- require("plugins.bufferline")
-- require("plugins.indent")
require("plugins.oil")
require("plugins.git")
require("plugins.blink")
require("plugins.pick")
require("plugins.treesitter")
require("plugins.trouble")
require("plugins.diagnostic")
