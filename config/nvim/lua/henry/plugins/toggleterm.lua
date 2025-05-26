return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup{
      -- Optional settings:
      size = 20,
      open_mapping = [[<c-\>]],  -- Ctrl + backslash to toggle
      shade_terminals = true,
      direction = "float",  -- terminal position: horizontal, vertical, float
    }
  end
}

