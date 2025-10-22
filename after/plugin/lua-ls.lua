local config = {
    settings = {
        Lua = {
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
        },
    },
}
-- vim.lsp.config('lua_ls', config)
