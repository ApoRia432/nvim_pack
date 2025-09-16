---- Mason
-- local vue_language_server_path = vim.fn.stdpath("data") 
-- .. "/mason/packages/vue-language-server/node_modules/@vue/language-server"

local vue_language_server_path = os.getenv("BUN_INSTALL") .. "/install/global/node_modules/@vue/language-server/"

local ts_ls_config = {
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
}
vim.lsp.config('ts_ls', ts_ls_config)

vim.lsp.enable('gopls')
vim.lsp.enable('clangd')
-- vim.lsp.enable('lua_ls')
vim.lsp.enable('bashls')
vim.lsp.enable({ 'ts_ls', 'vue_ls' })
