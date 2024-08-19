return function()
	require("model.providers.llamacpp").setup({
		binary = "llama-server",
		models = "~/nvimfiles/models",
	})
end
