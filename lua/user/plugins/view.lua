local view = {}

view["marioortizmanero/adoc-pdf-live.nvim"] = {
	lazy = true,
	config = function()
		require("configs.view.adoc-pdf-live")
	end,
}

return view
