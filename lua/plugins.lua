local plugins = {
    {
        src = 'https://github.com/akinsho/bufferline.nvim',
    },
    'https://github.com/nvim-tree/nvim-web-devicons',
    {
        src = 'https://github.com/nvim-telescope/telescope.nvim', 
        version = '0.1.8',
    },
    'https://github.com/nvim-lua/plenary.nvim',
    'https://github.com/nvim-treesitter/nvim-treesitter',
    'https://github.com/neovim/nvim-lspconfig',
    'https://github.com/lukas-reineke/indent-blankline.nvim',
    'https://github.com/lewis6991/gitsigns.nvim',
    'https://github.com/folke/trouble.nvim',
}

vim.pack.add(plugins)

require("plugins.bufferline")
require("plugins.git")
require("plugins.indent")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.trouble")
