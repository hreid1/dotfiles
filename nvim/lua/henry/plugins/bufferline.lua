return {
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
        enabled = true,
        config = function()
            local bufferline = require("bufferline")
            bufferline.setup({
                options = {
                    mode = "buffers",
                    separator_style = "thick",
                    -- style_preset = {
                    --     bufferline.style_preset.minimal,
                    -- },
                    --
                    always_show_bufferline = true,
                    show_buffer_close_icons = true,
                    show_close_icon = true,
                    diagnostics = "nvim_lsp",

                    offsets = {
                        {
                            filetype = "neo-tree",
                            text = "File Explorer",
                            text_align = "center",
                            separator = true,
                        },
                    },
                },
            })

            -- New Buffer
            vim.keymap.set("n", "<leader>nb", "<cmd>enew<cr>")

            -- Navigating buffer
            vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>")
            vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>")

            vim.keymap.set("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<cr>")
            vim.keymap.set("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<cr>")
            vim.keymap.set("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<cr>")
            vim.keymap.set("n", "<leader>4", "<cmd>BufferLineGoToBuffer 4<cr>")
            vim.keymap.set("n", "<leader>5", "<cmd>BufferLineGoToBuffer 5<cr>")

            -- Closing current buffer
            vim.keymap.set("n", "<leader>x", "<cmd>bdelete!<cr>")
        end,
    },
}
