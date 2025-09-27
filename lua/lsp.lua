local vue_language_server_path = os.getenv("BUN_INSTALL") .. "/install/global/node_modules/@vue/language-server/"

vim.lsp.config('ts_ls', {
    init_options = {
        plugins = {
            {
                name = "@vue/typescript-plugin",
                location = vue_language_server_path,
                languages = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
            },
        },
    },
	filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
})

vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
        },
    },
})

vim.lsp.enable('gopls')
vim.lsp.enable('lua_ls')
vim.lsp.enable('bashls')
vim.lsp.enable({ 'ts_ls', 'vue_ls' })
vim.lsp.enable('clangd')
vim.lsp.enable('pyright')
vim.lsp.enable('rust_analyzer')
