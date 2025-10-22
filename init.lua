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
vim.opt.smartcase = true
vim.opt.termguicolors = true
vim.diagnostic.config({
    virtual_text = {
        current_line = true
    }
})
vim.opt.pumheight = 9
vim.opt.complete = "o"
vim.opt.autocomplete = true
vim.opt.completeopt = { "fuzzy", "menuone", "noselect" }
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client and client:supports_method('textDocument/completion') then
            -- local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
            -- client.server_capabilities.completionProvider.triggerCharacters = chars
            vim.lsp.completion.enable(true, client.id, ev.buf, {
                autotrigger = true,
            })
        end
    end,
})

vim.pack.add({
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'main' },
    { src = 'https://github.com/nvim-mini/mini.pick' },
    { src = 'https://github.com/stevearc/oil.nvim' },
    { src = 'https://github.com/lewis6991/gitsigns.nvim' },
    { src = 'https://github.com/folke/tokyonight.nvim' },
});

require('gitsigns').setup()
require('mini.pick').setup()
require('oil').setup({
    win_options = {
        winbar = "%#@attribute.builtin#%{substitute(v:lua.require('oil').get_current_dir(), '^' . $HOME, '~', '')}",
    },
})
require('tokyonight').setup({
    styles = {
        keywords = { italic = false },
    }
})

local languages = {
    'lua', 'go', 'vue', 'html', 'scss', 'css', 'typescript', 'javascript', 'typescriptreact', 'javascriptreact'
}
require('nvim-treesitter').install(languages);
vim.api.nvim_create_autocmd('FileType', {
    pattern = languages,
    callback = function() vim.treesitter.start() end,
})

vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>e', vim.cmd.Oil);
vim.keymap.set('n', '<leader>w', vim.cmd.write);
vim.keymap.set('n', '<leader>q', vim.cmd.quit);
vim.keymap.set('n', '<leader>x', vim.cmd.bd);
vim.keymap.set('n', '<leader>t', vim.cmd.term);

vim.keymap.set('n', 'ld', vim.lsp.buf.definition);
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format);
vim.keymap.set({'n', 'v', 'x'}, '<leader>y', '"+y<CR>')

vim.keymap.set('n', '<leader>pf', ':Pick files<CR>');
vim.keymap.set('n', '<leader>ps', ':Pick grep_live<CR>');
vim.keymap.set('n', '<leader>pb', ':Pick buffers<CR>');

vim.lsp.enable('gopls')
vim.lsp.enable('lua_ls')
vim.lsp.enable('ts_ls')
vim.lsp.enable('bashls')

vim.cmd('colorscheme tokyonight-night');
