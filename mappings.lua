-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    -- ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    -- ["<leader>bD"] = {
    --   function()
    --     require("astronvim.utils.status").heirline.buffer_picker(
    --       function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
    --     )
    --   end,
    --   desc = "Pick to close",
    -- },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    -- ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- ["<C-g>"] = { ":SearchMD ", desc = "Cheese search and generate" },
    ["<C-g>"] = { "<cmd>ObsidianToday<CR>", desc = "Cheese create a new daily note" },
    ["<C-f>"] = { "<cmd>ObsidianQuickSwitch<CR>", desc = "Cheese search by file name" },
    ["<C-j>"] = { "<cmd>ObsidianSearch<CR>", desc = "Cheese search by content" },
    ["<F4>"] = { "<cmd>ObsidianOpen<CR>", desc = "Open current note in the Obsidian app" },

    -- buffer
    ["L"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["H"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    ["ts"] = { "<cmd>CamelToSnake!<CR><cmd>HyphenToSnake!<CR>", desc = "To snake" },
    ["tc"] = { "<cmd>SnakeToCamel!<CR><cmd>HyphenToCamel!<CR>", desc = "To Camel" },
    ["th"] = { "<cmd>CamelToHyphen!<CR><cmd>SnakeToHyphen!<CR>", desc = "To Hyphen" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
