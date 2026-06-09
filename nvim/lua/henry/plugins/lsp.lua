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
                    "pyright",
                    "bashls",
                    "ts_ls",
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

                map("gd",         vim.lsp.buf.definition,      "Go to definition")
                map("gD",         vim.lsp.buf.declaration,     "Go to declaration")
                map("gr",         vim.lsp.buf.references,      "Go to references")
                map("gI",         vim.lsp.buf.implementation,  "Go to implementation")
                map("K",          vim.lsp.buf.hover,           "Hover docs")
                map("<leader>rn", vim.lsp.buf.rename,          "Rename symbol")
                map("<leader>ca", vim.lsp.buf.code_action,     "Code action")
                map("[d",         vim.diagnostic.goto_prev,    "Prev diagnostic")
                map("]d",         vim.diagnostic.goto_next,    "Next diagnostic")
                map("<leader>e",  vim.diagnostic.open_float,   "Show diagnostic")
            end

            -- Attach keymaps via the new autocmd pattern
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

            -- pyright, bashls, ts_ls: no extra settings needed
            vim.lsp.config("pyright", {})
            vim.lsp.config("bashls", {})
            vim.lsp.config("ts_ls", {})

            vim.lsp.config("*", {
                capabilities = require("blink.cmp").get_lsp_capabilities(),
            })

            -- Enable all configured servers
            vim.lsp.enable({ "lua_ls", "pyright", "bashls", "ts_ls" })

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
}
