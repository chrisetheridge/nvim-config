local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "folke/trouble.nvim",
    cmd = "Trouble",
    config = function()
      require("trouble").setup()
    end,
  },

  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    config = function()
      require "custom.configs.zenmode"
    end,
  },

  {
    "Olical/conjure",
    config = function()
      require "custom.configs.conjure"
    end,
    lazy   = true,
    branch = "develop",
    ft     = { "clojure", "lua" },
  },

  {
    "nvim-zh/auto-save.nvim",
    enabled = true,
    event = "BufReadPost",
    opts = {
      execution_message = {
        message = function()
          return ""
        end,
      },
      trigger_events = { "BufLeave", "FocusLost" },
      condition = function(buf)
        local vf = vim.fn
        return vf.getbufvar(buf, "&modifiable") == 1
      end,
    },
  },

  {
    cmd = "Neogit",
    "TimUntersberger/neogit",
    opts = {
      integrations = {
        diffview = true,
      },
      disable_commit_confirmation = true,
      kind = "vsplit",
      signs = {
        section = { "", "" },
        item = { "", "" },
      },
    },
    dependencies = {
      "sindrets/diffview.nvim"
    },
  },

  {
    "stevearc/oil.nvim",
    cmd = "Oil",
    config = function()
      require "custom.configs.oil"
    end
  },

  {
    "guns/vim-sexp",
    ft = { "clojure", "lisp", "fennel", "scheme", "janet" },
    init = function()
      -- vim.g.sexp_filetypes = "clojure,scheme,lisp,fennel,janet"
      vim.g.sexp_filetypes = ""
    end,
    dependencies = {
      "radenling/vim-dispatch-neovim",
      "tpope/vim-sexp-mappings-for-regular-people",
      "tpope/vim-repeat",
    },
    config = function()
      require "custom.configs.vim-sexp"
    end,
  },

  {
    "natecraddock/workspaces.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-neo-tree/neo-tree.nvim",
      "folke/which-key.nvim",
    },
    config = function()
      require "custom.configs.workspaces"
    end
  },

  {
    "dstein64/vim-startuptime",
    cmd = "StartupTime",
  },

  {
    "ThePrimeagen/harpoon",
    config = true,
  },

  {
    "folke/todo-comments.nvim", 
    event = "VeryLazy", 
    config = true 
  },

  {
    "kylechui/nvim-surround",
    event = "BufReadPost",
    config = true,
  },

  {
    "uga-rosa/ccc.nvim",
    event = "VeryLazy",
    opts = {
      highlighter = {
        auto_enable = true,
        events = { "BufReadPost", "TextChanged", "TextChangedI" },
      },
    },
  },

  {
    "windwp/nvim-autopairs",
    event = "VeryLazy",
    opts = {
      disable_filetype = {
        "clojure",
        "TelescopePrompt",
        "fennel",
      },
    },
  },

  {
    "ggandor/leap.nvim",
    event = "VeryLazy",
    config = function()
      require("leap").add_default_mappings()
    end,
  },

  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    init = function()
      vim.keymap.set(
        "n",
        "<leader>lo",
        ":SymbolsOutline<cr>",
        { desc = "Symbols Outline" }
      )
    end,
    opts = {
      keymaps = {
        focus_location = "<tab>",
      },
    },
  },

  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    build = "cd app && pnpm i",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
  },

  {
    "eraserhd/parinfer-rust",
    build = "cargo build --release",
    name = "parinfer",
    enabled = true,
    ft = { "clojure" },
    config = function()
      vim.g.parinfer_mode = "paren"
    end,
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    branch = "v2.x",
    config = function ()
      require "custom.configs.neo-tree"
    end,
    dependencies = {
      "s1n7ax/nvim-window-picker",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    dependencies = {
      "ThePrimeagen/harpoon",
    },
    config = function ()
      require "custom.configs.which-key"
    end
  },

  {
    "pradyungn/Mountain"
  }

}

return plugins
