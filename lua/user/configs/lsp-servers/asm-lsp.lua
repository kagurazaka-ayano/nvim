-- https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/server_configurations/gopls.lua
return {
	cmd = { "asm-lsp" },
	filetypes = { "S", "asm", "s" },
	root_dir = vim.fn.getcwd(),
}
