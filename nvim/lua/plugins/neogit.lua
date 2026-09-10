vim.pack.add({
    -- Only one of these is needed.
    "https://github.com/sindrets/diffview.nvim",   -- optional
    "https://github.com/esmuellert/codediff.nvim", -- optional

    -- For a custom log pager
    "https://github.com/m00qek/baleia.nvim", -- optional

    -- Only one of these is needed.
    "https://github.com/nvim-telescope/telescope.nvim", -- optional
    "https://github.com/ibhagwan/fzf-lua",              -- optional
    "https://github.com/nvim-mini/mini.pick",           -- optional
    "https://github.com/folke/snacks.nvim",             -- optional

    "https://github.com/neogitorg/neogit"
})

require("neogit").setup({})
vim.keymap.set("n", "<leader>gg", "<cmd>Neogit<cr>")
