local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.prettier,
		null_ls.builtins.formatting.csharpier,
		null_ls.builtins.formatting.google_java_format,
	},
})

-- Formatear solo con null-ls (evita conflictos con los LSPs)
vim.keymap.set("n", "gf", function()
	vim.lsp.buf.format({
		async = true,
		filter = function(client)
			return client.name == "null-ls"
		end,
	})
end, { desc = "Format with null-ls" })
