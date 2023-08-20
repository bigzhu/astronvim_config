return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  commit = "33eb472b459f1d2bf49e16154726743ab3ca1c6d",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      "graphql",
      "lua",
      "markdown",
      "markdown_inline",
    })
    opts.highlight = {
      enable = true,
      additional_vim_regex_highlighting = { "markdown" },
    }
  end,
}
