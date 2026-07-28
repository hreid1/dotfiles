return {
    {
        "mason-org/mason.nvim",
        opts = {}
    },
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
        opts = {
            ensure_installed = {
                "clangd",
                "lua_ls",
                "rust_analyzer",
                "ts_ls",
                "yamlls",
                "jsonls",
                --"gopls",
                "dockerls",
                "bashls",
                "basedpyright"
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
    },
    {
        'stevearc/conform.nvim',
        opts = {
            formatters_by_ft = {
                lua = { "stylua" },
                python = { "black" },
                rust = { "rustfmt", lsp_format = "fallback" },
                javascript = { "prettierd", "prettier", stop_after_frst = true },
            },
            format_on_save = {
                timeout_ms = 500,
                lsp_format = "fallback"
            },
        },
    }
}
