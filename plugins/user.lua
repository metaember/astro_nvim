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

  -- "neovim/nvim-lspconfig",
  -- {
  --   "simrat39/rust-tools.nvim",
  --   dependencies = { "neovim/nvim-lspconfig", "nvim-lua/plenary.nvim", "mfussenegger/nvim-dap" },
  --   config = function()
  --     local rt = require "rust-tools"
  --     rt.setup {
  --       server = {
  --         on_attach = function(_, bufnr)
  --           -- Hover actions
  --           vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
  --           -- Code action groups
  --           vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
  --         end,
  --       },
  --     }
  --   end,
  -- },
  -- "nvim-lua/plenary.nvim",
  -- "mfussenegger/nvim-dap",
  "catppuccin/nvim",
  {
    "imsnif/kdl.vim",
    config = true,
  },

  -- From Afnan
  -- active indent guide and indent text objects
  -- {
  --   "echasnovski/mini.indentscope",
  --   version = false, -- wait till new 0.7.0 release to put it back on semver
  --   event = { "BufReadPre", "BufNewFile" },
  --   opts = {
  --     -- symbol = "▏",
  --     symbol = "│",
  --     options = { try_as_border = true },
  --   },
  --   config = function(_, opts)
  --     vim.api.nvim_create_autocmd("FileType", {
  --       pattern = { "help", "alpha", "dashboard", "oil", "Trouble", "lazy", "mason" },
  --       callback = function() vim.b.miniindentscope_disable = true end,
  --     })
  --     require("mini.indentscope").setup(opts)
  --   end,
  -- },
  {
    "echasnovski/mini.nvim",
    version = false,
    event = { "BufReadPre", "BufNewFile" },
    config = function(_, opts)
      require("mini.animate").setup()
      -- this controls timing of mouse animations. Default 250 ms
      MiniAnimate.config.cursor.timing = function(_, n) return 100 / n end
      require("mini.indentscope").setup()
    end,
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        -- disable these because it conflicts with the native lsp popup stuff
        hover = {
          enabled = false,
        },
        signature = {
          enabled = false,
        },
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        -- override = {
        --   ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        --   ["vim.lsp.util.stylize_markdown"] = true,
        --   ["cmp.entry.get_documentation"] = true,
        -- },
      },
      -- you can enable a preset for easier configuration
      presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = true, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
      },
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
  },
  {
    "smjonas/inc-rename.nvim",
    config = true,
  },
}
