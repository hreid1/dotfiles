return {
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = function()
            require("toggleterm").setup {
                -- Keep a safe default fallback here
                direction = "vertical",

                -- The sizing rules will dynamically adapt to whichever direction is called
                size = function(term)
                    if term.direction == "horizontal" then
                        return 15
                    elseif term.direction == "vertical" then
                        return vim.o.columns * 0.4
                    end
                end,
                float_opts = {
                    border = "rounded"
                },
            }

            -- Keybinds
            -- Smart Open: Evaluates your screen size at the exact moment you press the keys
            vim.keymap.set("n", "<leader>ot", function()
                if vim.o.columns < 120 then
                    vim.cmd("ToggleTerm direction=horizontal")
                else
                    vim.cmd("ToggleTerm direction=vertical")
                end
            end, { desc = "Open Terminal (Smart Layout)" })

            -- Close/Toggle all open terminals
            vim.keymap.set("n", "<leader>ct", "<cmd>ToggleTermToggleAll<cr>", { desc = "Toggle All Terminals" })
        end
    },
}
