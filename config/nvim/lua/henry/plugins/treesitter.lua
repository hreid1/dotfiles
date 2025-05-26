return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "lua",
          "python",
          "javascript",
          "typescript",
          "json",
          "html",
          "css",
          "bash",
          "cpp",
          "c",
        },
        highlight = {
          enable = true,              -- Enable syntax highlighting
          additional_vim_regex_highlighting = false,  -- Disable legacy highlighting
        },
        indent = {
          enable = true,              -- Enable better indentation
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<CR>",      -- Start selection with Enter
            node_incremental = "<CR>",    -- Increment selection with Enter
            node_decremental = "<BS>",    -- Decrement selection with Backspace
            scope_incremental = "<TAB>",  -- Increment scope with Tab
          },
        },
        -- Optional: textobjects for more powerful selections/motions
        textobjects = {
          select = {
            enable = true,
            lookahead = true,
            keymaps = {
              ["af"] = "@function.outer",
              ["if"] = "@function.inner",
              ["ac"] = "@class.outer",
              ["ic"] = "@class.inner",
            },
          },
          move = {
            enable = true,
            set_jumps = true,
            goto_next_start = {
              ["]m"] = "@function.outer",
              ["]]"] = "@class.outer",
            },
            goto_previous_start = {
              ["[m"] = "@function.outer",
              ["[["] = "@class.outer",
            },
          },
        },
      })
    end,
  },
}

