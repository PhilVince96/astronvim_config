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
    "ggandor/leap.nvim",
    lazy = false,
    config = function()
      require('leap').add_default_mappings()
    end,
  },
  {
    "kylechui/nvim-surround",
    lazy = false,
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    "saecki/crates.nvim",
    tag = "v0.3.0",
    requires = { "nvim-lua/plenary.nvim" },
    config = function() require("crates").setup() end,
  },
  {
    "nvim-neorg/neorg",
    lazy = false,
    build = ":Neorg sync-parsers",
    opts = {
      load = {
        ["core.defaults"] = {},       -- Loads default behaviour
        ["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.norg.dirman"] = {      -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/Neorg/notes",
            },
          },
        },
        ["core.norg.completion"] = {
          config = {
            engine = "nvim-cmp",
            name = "[Neorg]",
          }
        },
      },
    },
    dependencies = { { "nvim-lua/plenary.nvim" } },
  }
}
