local plugins = {
	{
		src = 'https://github.com/Saghen/blink.cmp',
	},
	'https://github.com/rafamadriz/friendly-snippets',
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
    --'https://github.com/mason-org/mason.nvim',
    -- 'https://github.com/windwp/nvim-autopairs',
    'https://github.com/lukas-reineke/indent-blankline.nvim',
    'https://github.com/lewis6991/gitsigns.nvim',
    'https://github.com/folke/trouble.nvim',
}

vim.pack.add(plugins)

-- require("plugins.autopair")
require("plugins.blink")
require("plugins.bufferline")
require("plugins.git")
require("plugins.indent")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.trouble")
