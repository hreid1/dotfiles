return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					-- Python
					"pyright",
					"ruff",

					--"bashls",
					"ts_ls",
					"html",
					"cssls",
					"jsonls",
					"dockerls",
					"terraformls",
					"marksman",
					"rust_analyzer",
				},
				automatic_installation = true,
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		dependencies = { "williamboman/mason-lspconfig.nvim" },
		config = function()
			-- Shared on_attach
			local on_attach = function(_, bufnr)
				local map = function(keys, func, desc)
					vim.keymap.set("n", keys, func, { buffer = bufnr, desc = "LSP: " .. desc })
				end

				map("gd", vim.lsp.buf.definition, "Go to definition")
				map("gD", vim.lsp.buf.declaration, "Go to declaration")
				map("gr", vim.lsp.buf.references, "Go to references")
				map("gI", vim.lsp.buf.implementation, "Go to implementation")
				map("K", vim.lsp.buf.hover, "Hover docs")
				map("<leader>rn", vim.lsp.buf.rename, "Rename symbol")
				map("<leader>ca", vim.lsp.buf.code_action, "Code action")
				map("[d", vim.diagnostic.goto_prev, "Prev diagnostic")
				map("]d", vim.diagnostic.goto_next, "Next diagnostic")
				map("<leader>e", vim.diagnostic.open_float, "Show diagnostic")
			end

			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(args)
					on_attach(nil, args.buf)
				end,
			})

			-- lua_ls: suppress "undefined global vim" warnings
			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = { globals = { "vim" } },
						workspace = { checkThirdParty = false },
						telemetry = { enable = false },
					},
				},
			})

			-- Setup servers with valid LSP names
			vim.lsp.config("pyright", {
				handlers = {
					["textDocument/publishDiagnostics"] = function() end, -- Mute Pyright errors
				},
				settings = {
					python = {
						analysis = {
							autoSearchPaths = true,
							useLibraryCodeForTypes = true,
							diagnosticMode = "openFilesOnly",
						},
					},
				},
			})

			-- Ruff: Handles linting & syntax diagnostics
			vim.lsp.config("ruff", {})

			vim.lsp.config("bashls", {})
			vim.lsp.config("ts_ls", {})
			vim.lsp.config("dockerls", {})
			vim.lsp.config("terraformls", {})

			-- Setup rust_analyzer and tell it to use clippy on save
			vim.lsp.config("rust_analyzer", {
				settings = {
					["rust-analyzer"] = {
						check = {
							command = "clippy",
						},
					},
				},
			})

			-- Split the VSCode bundle into actual server identifiers
			vim.lsp.config("html", {})
			vim.lsp.config("cssls", {})
			vim.lsp.config("jsonls", {})

			-- Force marksman to start even without a .git repo present
			vim.lsp.config("marksman", {
				root_dir = function(fname)
					local util = require("lspconfig.util")
					return util.root_pattern(".git")(fname) or util.path.dirname(fname)
				end,
			})

			-- Setup Blink/capabilities setup for all configs
			vim.lsp.config("*", {
				capabilities = require("blink.cmp").get_lsp_capabilities(),
			})

			-- Enable all configured servers (using the proper server names)
			vim.lsp.enable({
				"lua_ls",
				"pyright",
				"ruff",
				"bashls",
				"ts_ls",
				"html",
				"cssls",
				"jsonls",
				"dockerls",
				"terraformls",
				"marksman",
				"rust_analyzer",
			})

			-- Diagnostic display
			vim.diagnostic.config({
				virtual_text = true,
				signs = true,
				underline = true,
				update_in_insert = false,
				severity_sort = true,
			})
		end,
	},
	{
		"rust-lang/rust.vim",
		enabled = false,
		config = function()
			-- Optional: Disable rust.vim's built-in formatting engine
			-- to completely prevent conflicts with your native LSP formatter
			vim.g.rustfmt_autosave = 0
		end,
	},
}
