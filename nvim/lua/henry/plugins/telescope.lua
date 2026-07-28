return {
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        },
        keys = {
            { '<leader>fd', '<cmd>Telescope find_files<cr>', desc = 'Find Files' },
            { '<leader>fg', '<cmd>Telescope live_grep<cr>',  desc = 'Live Grep' },
            { '<leader>fb', '<cmd>Telescope buffers<cr>',    desc = 'Find Buffers' },
        },
        config = function()
            local telescope = require('telescope')

            telescope.setup({
                pickers = {
                    find_files = {
                        theme = 'ivy',
                    },
                },
            })

            -- Enable fzf native extension if installed
            pcall(telescope.load_extension, 'fzf')
        end,
    },
}
