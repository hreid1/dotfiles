return{
    {
        'akinsho/toggleterm.nvim',
        config = function()
            local term = require("toggleterm")

            term.setup({
                size = 40,
                direction = "float",
                open_mapping = [[<c-\>]],
            })
        end,
    }
}
