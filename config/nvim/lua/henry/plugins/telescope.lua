return {
    {
        "nvim-telescope/telescope.nvim",
        name = "telescope",
        dependencies = { "nvim-lua/plenary.nvim" },
        lazy = false,
        priority = 1000,
        config = function()
            require("telescope").setup({
                defaults = {
                    -- your telescope defaults here (optional)
                    mappings = {
                        i = {
                            ["<C-j>"] = require("telescope.actions").move_selection_next,
                            ["<C-k>"] = require("telescope.actions").move_selection_previous,
                        },
                    },
                },
            })

            -- Example keymaps for telescope
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
            vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
            vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })
        end,
    },
}

