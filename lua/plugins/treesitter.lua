local languages = {
  'go',
  'zig',
  'lua',
  'css',
  'scss',
  'javascript',
  'typescript',
  'javascriptreact',
  'typescriptreact',
  'vue',
}

require('nvim-treesitter').install(languages)

vim.api.nvim_create_autocmd('FileType', {
  pattern = languages,
  callback = function() vim.treesitter.start() end,
})
--
-- vim.api.nvim_create_autocmd('PackChanged', {
--     desc = 'handle treesitter updates',
--     group = vim.api.nvim_create_augroup('nvim-treesitter-pack-changed-update', { clear = true}),
--     callback = function(event)
--         local ok = pcall(vim.cmd, 'TSUpdate')
--         if ok then
--             vim.notify('TSUpdate completed', vim.log.levels.INFO)
--         else
--             vim.notify('TSUpdate failed', vim.log.levels.WARN)
--         end
--     end
-- })
