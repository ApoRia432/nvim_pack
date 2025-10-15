vim.pack.add({
    -- TokyoNight
    'https://github.com/folke/tokyonight.nvim',
    'https://github.com/catppuccin/nvim',
    'https://github.com/vague2k/vague.nvim'
})

require("vague").setup({
    transparent = true,
    style = {
        boolean = 'none',
        strings = 'none',
        keyword_return = 'none',
        builtin_functions = 'bold',
    },
    colors = {
        func = "#aeaed1",
    }
})

require("tokyonight").setup({
    styles = {
        keywords = { italic = false },
    }
})
vim.cmd("colorscheme vague")
