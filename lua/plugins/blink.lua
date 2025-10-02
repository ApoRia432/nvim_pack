require("blink.cmp").setup({
  sources = {
    default = { 'lsp', 'path', 'snippets' },
  },
  fuzzy = { implementation = "lua" }
})
