require("options")
require("keymaps")
require("completion")
require("plugins")

vim.lsp.enable('gopls')
-- vim.lsp.enable('lua_ls')
vim.lsp.enable('ts_ls')
vim.lsp.enable('bashls')
vim.lsp.enable('clangd')
vim.lsp.enable('pyright')
vim.lsp.enable('rust_analyzer')

pcall(dofile, os.getenv("HOME") .. "/.config/void-theme/current/nvim.lua")
