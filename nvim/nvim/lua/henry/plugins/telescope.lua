return{
    {
        'nvim-telescope/telescope.nvim',
        version = '*',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        },
        config = function()
            require('telescope').setup({
                vim.keymap.set("n", "<leader>fd", require("telescope.builtin").find_files),
                
                defaults = {
                    mappings = {
                        i = {
                            ["<C-j>"] = require("telescope.actions").move_selection_next,
                            ["<C-k>"] = require("telescope.actions").move_selection_previous,
                        },
                        n = {
                            ["j"] = require("telescope.actions").move_selection_next,
                            ["k"] = require("telescope.actions").move_selection_previous,
                        }
                    }
                },
                pickers = {
                    find_files = {
                        theme = "ivy",
                    }
                },
                extensions = {}
            })
        end
    },
}

