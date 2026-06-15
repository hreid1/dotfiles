return {
    {
        "olimorris/codecompanion.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("codecompanion").setup({
                strategies = {
                    chat = {
                        adapter = "ollama",
                    },
                    inline = {
                        adapter = "ollama",
                    },
                },
                adapters = {
                    ollama = function()
                        return require("codecompanion.adapters").extend("ollama", {
                            schema = {
                                model = {
                                    default = "llama3.2",
                                },
                            },
                        })
                    end,
                },
                display = {
                    chat = {
                        window = {
                            layout = "vertical", -- Split screen instead of floating window
                            direction = "right", -- Forces the split to the RIGHT side
                            width = 0.35,        -- Chat takes up 35% of the screen
                        },
                    },
                },
            })
        end
    }
}
