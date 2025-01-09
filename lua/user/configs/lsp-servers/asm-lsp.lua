-- https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/server_configurations/gopls.lua
return {
	cmd = { "asm-lsp" },
	filetypes = { "S", "asm", "s" },
	flags = { allow_incremental_sync = true, debounce_text_changes = 500 },
	root_dir = vim.fn.getcwd(),
}
