vim.pack.add({
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/mason-org/mason-lspconfig.nvim",
	"https://github.com/neovim/nvim-lspconfig",
})

require("mason").setup()
require("mason-lspconfig").setup({
	automatic_enable = {
		"lua_ls",
		"rust_analyzer",
		"ts_ls",
		"basedpyright",
		"bash_ls",
	},
})

vim.lsp.enable("lua_ls")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("ts_ls")
vim.lsp.enable("basedpyright")
vim.lsp.enable("bash_ls")
