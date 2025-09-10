-- blink.cmp
vim.pack.add({
    {
        src = 'https://github.com/Saghen/blink.cmp',
        version = '1.*',
    },
    'https://github.com/rafamadriz/friendly-snippets',
})

-- bufferline
vim.pack.add({
    {
        src = 'https://github.com/akinsho/bufferline.nvim',
        version = '*',
    },
    'https://github.com/nvim-tree/nvim-web-devicons'
})

-- Telescope
vim.pack.add({
    {
        src = 'https://github.com/nvim-telescope/telescope.nvim', 
        version = '0.1.8',
    },
    'https://github.com/nvim-lua/plenary.nvim',
})

-- Treesitter
vim.pack.add({
    {
        src = 'https://github.com/nvim-treesitter/nvim-treesitter',
        version = 'master',
    },
})

-- lspconfig
vim.pack.add({
  'https://github.com/neovim/nvim-lspconfig',
  
})

-- Mason
vim.pack.add({
    'https://github.com/mason-org/mason.nvim',
})

-- autopair
vim.pack.add({
    'https://github.com/windwp/nvim-autopairs',
})

-- indent
vim.pack.add({
    'https://github.com/lukas-reineke/indent-blankline.nvim',
})

-- gitsign
vim.pack.add({
    'https://github.com/lewis6991/gitsigns.nvim'
})

-- trouble
vim.pack.add({
    'https://github.com/folke/trouble.nvim'
})
