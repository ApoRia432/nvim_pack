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

vim.lsp.enable('ts_ls')
