return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "mg979/vim-visual-multi",
    lazy = false,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "v", -- Adds V language tree-sitter parser
      },
      highlight = {
        enable = true,
      },
    },
  },

  -- {
  --   "hrsh7th/nvim-cmp",
  --   opts = function(_, opts)
  --     local cmp = require("cmp")
  --
  --     -- Disable Tab / Shift-Tab from navigating / confirming completion menu
  --     opts.mapping["<Tab>"] = nil
  --     opts.mapping["<S-Tab>"] = nil
  --
  --     return opts
  --   end,
  -- },
  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },

  -- lua/plugins/init.lua
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      -- Disable automatic popup on keystrokes
      opts.completion = {
        autocomplete = false,
      }

      return opts
    end,
  },


}
