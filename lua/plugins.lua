local plugins = {
	-- blink.cmp
	{
		src = 'https://github.com/Saghen/blink.cmp',
	},
	'https://github.com/rafamadriz/friendly-snippets',
    -- bufferline
    {
        src = 'https://github.com/akinsho/bufferline.nvim',
    },
    'https://github.com/nvim-tree/nvim-web-devicons',
    -- Telescope
    {
        src = 'https://github.com/nvim-telescope/telescope.nvim', 
        version = '0.1.8',
    },
    'https://github.com/nvim-lua/plenary.nvim',
    -- Treesitter
    'https://github.com/nvim-treesitter/nvim-treesitter',
    -- lspconfig
    'https://github.com/neovim/nvim-lspconfig',
    -- Mason
    --'https://github.com/mason-org/mason.nvim',
    -- autopair
    'https://github.com/windwp/nvim-autopairs',
    -- indent
    'https://github.com/lukas-reineke/indent-blankline.nvim',
    -- gitsign
    'https://github.com/lewis6991/gitsigns.nvim',
    -- trouble
    'https://github.com/folke/trouble.nvim',
}

vim.pack.add(plugins)

require("plugins.autopair")
require("plugins.blink")
require("plugins.bufferline")
require("plugins.git")
require("plugins.indent")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.trouble")
