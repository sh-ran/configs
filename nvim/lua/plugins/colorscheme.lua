return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				-- disable_background = true,
				styles = {
					bold = true,
					italic = false,
					transparency = true,
				},
			})
		end,
	},
}
