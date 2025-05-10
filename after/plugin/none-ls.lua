local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.prettier,
		null_ls.builtins.formatting.checkstyle,
		null_ls.builtins.formatting.lemminx,
		null_ls.builtins.formatting.json_tool,
		null_ls.builtins.formatting.csharpier,
	},
})

vim.keymap.set("n", "gf", vim.lsp.buf.format, {})
