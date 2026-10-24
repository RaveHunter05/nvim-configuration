vim.opt.clipboard='unnamedplus'

vim.opt.relativenumber = true

vim.opt.ignorecase = true
vim.opt.ignorecase = true
vim.opt.incsearch=true

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		if client then
			client.dynamic_capabilities = nil
		end
	end,
})
