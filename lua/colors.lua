vim.pack.add({
    -- TokyoNight
    'https://github.com/folke/tokyonight.nvim',
    'https://github.com/catppuccin/nvim',
    'https://github.com/vague2k/vague.nvim'
})

require("vague").setup({
    transparent = true,
    colors = {
        func = "#aeaed1",
    }
})
vim.cmd("colorscheme vague")
