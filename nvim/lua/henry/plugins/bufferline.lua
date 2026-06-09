return{
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            require("bufferline").setup({
                options = {
                    mode = "buffers",
                    separator_style = "thin",
                    always_show_bufferline = true,
                    show_buffer_close_icons = true,
                    show_close_icon = true,

                    offsets = {
                        {
                            filetype = "neo-tree",
                            text = "File Explorer",
                            text_align = "center",
                            separator = true,
                        }
                    }
                }

            })
        end
    }
}
