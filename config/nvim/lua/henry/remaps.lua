vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>r", function()
  local filetype = vim.bo.filetype
  local filename = vim.fn.expand("%")
  local filename_no_ext = vim.fn.expand("%:r")

  vim.cmd("w") -- Save the file first

  if filetype == "cpp" then
    vim.cmd("!g++ " .. filename .. " -o " .. filename_no_ext .. " && ./" .. filename_no_ext)
  elseif filetype == "python" then
    -- Use Neovim terminal so input() works
    local cwd = vim.fn.expand("%:p:h")
    vim.cmd("vsplit | terminal cd " .. cwd .. " && python3 " .. filename)
  else
    print("Unsupported filetype: " .. filetype)
  end
end, { noremap = true, silent = true })

