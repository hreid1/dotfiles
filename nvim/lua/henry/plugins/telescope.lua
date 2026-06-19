return {
    {
        'nvim-telescope/telescope.nvim',
        version = '*',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        },
        config = function()
            require('telescope').setup({
                defaults = {
                    file_ignore_patterns = { "%.git/" },
                    mappings = {
                        i = {
                            ["<C-j>"] = require("telescope.actions").move_selection_next,
                            ["<C-k>"] = require("telescope.actions").move_selection_previous,
                        },
                        n = {
                            ["j"] = require("telescope.actions").move_selection_next,
                            ["k"] = require("telescope.actions").move_selection_previous,
                        }
                    },
                    vimgrep_arguments = {
                        'rg',
                        '--color=never',
                        '--no-heading',
                        '--with-filename',
                        '--line-number',
                        '--column',
                        '--smart-case',
                        '--hidden',
                        '--glob=!**/.git/*',
                    },
                },
                pickers = {
                    find_files = {
                        hidden = true,
                        theme = "ivy",
                    }
                },
                extensions = {},
            })

            vim.keymap.set("n", "<leader>fd", require("telescope.builtin").find_files, { desc = "[F]in[d] Files" })
        end
    },
}
