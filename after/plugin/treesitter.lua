require('nvim-treesitter.configs').setup({
    ensure_installed = { "c", "lua", "go", "javascript", "typescript" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    }
})

vim.api.nvim_create_autocmd('PackChanged', {
    desc = 'handle treesitter updates',
    group = vim.api.nvim_create_augroup('nvim-treesitter-pack-changed-update', { clear = true}),
    callback = function(event)
        local ok = pcall(vim.cmd, 'TSUpdate')
        if ok then
            vim.notify('TSUpdate completed', vim.log.levels.INFO)
        else
            vim.notify('TSUpdate failed', vim.log.levels.WARN)
        end
    end
})
