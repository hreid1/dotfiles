return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		keys = {
			{
				"<leader>f",
				function()
					require("conform").format({ async = true, lsp_format = "never" })
				end,
				mode = "",
				desc = "Format buffer",
			},
		},
		config = function()
			require("conform").setup({
				notify_on_error = false,
				formatters_by_ft = {
					lua = { "stylua" },
					python = { "ruff_format", "black", stop_after_first = true },
					rust = { "rustfmt" },
				},
				format_on_save = {
					quiet = true,
					timeout_ms = 500,
					lsp_format = "never", -- Prevents LSP fallback conflicts
				},
			})
		end,
	},
}
