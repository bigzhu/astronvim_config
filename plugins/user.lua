return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },

  {
    "jakewvincent/mkdnflow.nvim",
    rocks = "luautf8", -- Ensures optional luautf8 dependency is installed
    config = function()
      require("mkdnflow").setup {
        links = {
          style = "markdown",
          name_is_source = true,
          conceal = true,
          context = 0,
          implicit_extension = nil,
          transform_implicit = false,
          transform_explicit = false,
        },
        mappings = {
          MkdnFoldSection = { "n", "<leader>q" },
        },
      }
    end,
    lazy = false,
  },
  {
    "chiedo/vim-case-convert",
    lazy = false,
  },
  {
    "stevearc/aerial.nvim",
    config = function()
      local aerial = require "aerial"
      aerial.setup {
        attach_mode = "window",
        open_automatic = true,
        backends = { "treesitter", "lsp", "markdown" },
      }
    end,
  },
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      -- include the default astronvim config that calls the setup call
      require "plugins.configs.luasnip"(plugin, opts)
      -- load snippets paths
      require("luasnip.loaders.from_vscode").lazy_load {
        -- this can be used if your configuration lives in ~/.config/nvim
        -- if your configuration lives in ~/.config/astronvim, the full path
        -- must be specified in the next line
        paths = { "./lua/user/snippets/flutter-riverpod-snippets" },
      }
    end,
  },
}
