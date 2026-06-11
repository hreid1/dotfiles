vim.g.mapleader = " "

-- File Explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Splitting windows
vim.keymap.set("n", "<leader>sh", "<cmd>split<cr>")
vim.keymap.set("n", "<leader>sv", "<cmd>vsplit<cr>")

-- Close current window
vim.keymap.set("n", "<leader>sc", "<cmd>close<cr>")
