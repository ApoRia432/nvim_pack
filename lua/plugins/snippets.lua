require("luasnip").setup()
-- will exclude all javascript snippets
require("luasnip.loaders.from_vscode").load {
    exclude = { "javascript" },
}
