vim.opt.mouse = ""
vim.opt.guicursor = ""

vim.opt.wrap = false

vim.opt.swapfile = false

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 6

vim.opt.winborder = "single"
vim.opt.hlsearch = false
vim.opt.termguicolors = true

vim.diagnostic.config({
    virtual_text = {
        current_line = true
    }
})
