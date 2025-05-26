return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000, -- Load early
    config = function()
      require("rose-pine").setup({
        disable_background = true, -- Optional: for transparency
      })
      vim.cmd("colorscheme rose-pine")
    end,
  },
}

