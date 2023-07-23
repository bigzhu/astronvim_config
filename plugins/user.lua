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
}
