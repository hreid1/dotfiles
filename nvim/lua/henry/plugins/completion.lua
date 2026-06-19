return {
  {
    "saghen/blink.cmp",
    version = "*",
    dependencies = {
      "rafamadriz/friendly-snippets", -- large snippet library
    },
    opts = {
      keymap = {
        preset = "default",
        -- override individual keys if you want:
        -- ["<C-y>"] = { "accept", "fallback" },
        -- ["<C-e>"] = { "cancel", "fallback" },
      },

      appearance = {
        use_nvim_cmp_as_default = false,
        nerd_font_variant = "mono",
      },

      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },

      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 200,
        },
        menu = {
          draw = {
            treesitter = { "lsp" }, -- use treesitter highlighting in menu
          },
        },
      },

      signature = {
        enabled = true, -- show function signature while typing args
      },
    },
  },
}
