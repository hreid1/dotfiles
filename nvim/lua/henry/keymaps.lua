vim.g.mapleader = " "

-- File Explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Splitting windows
vim.keymap.set("n", "<leader>sh", "<cmd>split<cr>")
vim.keymap.set("n", "<leader>sv", "<cmd>vsplit<cr>")

-- Close current window
vim.keymap.set("n", "<leader>sc", "<cmd>close<cr>")

-- Navigate cmd line completition
vim.api.nvim_set_keymap("c", "<Down>", [[pumvisible() ? "\<C-n>" : "\<Down>"]], { expr = true, noremap = true })
vim.api.nvim_set_keymap("c", "<Up>", [[pumvisible() ? "\<C-p>" : "\<Up>"]], { expr = true, noremap = true })
vim.api.nvim_set_keymap("c", "<CR>", [[pumvisible() ? "\<C-y>" : "\<CR>"]], { expr = true, noremap = true })

vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
