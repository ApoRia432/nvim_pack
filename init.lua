require('options')
require('keymaps')
require('plugins')
require('completion')
require('lsp')
require('colors')

pcall(dofile, os.getenv("HOME") .. "/.config/void-theme/current/nvim.lua")
