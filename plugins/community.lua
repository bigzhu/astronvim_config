return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  { import = "astrocommunity.colorscheme.gruvbox-nvim" },

  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.dart" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.kotlin" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.bash" },

  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { -- further customize the options set by the community
    "copilot.lua",
    opts = {
      filetypes = {
        yaml = true,
        markdown = true,
        help = true,
        gitcommit = true,
        gitrebase = true,
        hgcommit = true,
        svn = true,
        cvs = true,
        ["."] = true,
      },
    },
  },

  -- { import = "astrocommunity.note-taking.obsidian-nvim", enabled = true },
  -- {
  --   "obsidian.nvim",
  --   opts = { dir = "~/cheese" },
  -- },
}
