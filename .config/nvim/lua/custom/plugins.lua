local plugins = {
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    cmd = { "MarkdownPreview", "MarkdownPreviewStop" },
    build = function() vim.fn["mkdp#util#install"]() end,
    keys = {
      { "<leader>m", "<cmd>MarkdownPreviewToggle<cr>", desc = "Toggle Markdown Preview" }
    }
  },
  {
    'AckslD/muren.nvim',
    config = true,
    event = "User AstroFile",
    keys = {
      { "<leader>fR", "<cmd>MurenToggle<cr>", desc = "Find and Replace Words In All Files"}
    },
  },
   {
   "williamboman/mason.nvim",
    lazy=false,
    config = function()
      require("mason").setup()
    end,
   opts = {
      automatic_installation = true,
      ensure_installed = {
        "lua_ls",
        "pyright",
        "cssls",
        "pyright",
        "sqlls",
        "jdtls",
        "gradle_ls",
        "taplo",
        "tailwindcss",
        "terraformls",
        "tsserver",
        -- "yamlls",
        "dockerls",
        "html",
        "jsonls",
        "kotlin_language_server",
        "marksman",
        "groovyls"
      },
    }
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy=false,
    config = function()
      require("mason-lspconfig").setup()
      require("mason-lspconfig").setup_handlers {
        -- The first entry (without a key) will be the default handler
        -- and will be called for each installed server that doesn't have
        -- a dedicated handler.
        function (server_name) -- default handler (optional)
            require("lspconfig")[server_name].setup {}
        end,
        -- Next, you can provide a dedicated handler for specific servers.
        -- For example, a handler override for the `rust_analyzer`:
    }
    end,
    opts = {
      ensure_installed = {
        "lua_ls",
        "pyright",
        "cssls",
        "pyright",
        "sqlls",
        "jdtls",
        "gradle_ls",
        "taplo",
        "tailwindcss",
        "terraformls",
        "tsserver",
        -- "yamlls",
        "dockerls",
        -- "gopls",
        "html",
        "jsonls",
        "kotlin_language_server",
        "marksman",
        "groovyls"
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "black",
        "prettier",
        "prettierd"
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      -- ensure_installed = { "python" },
    },
  },
  {
    "rcarriga/nvim-notify",
    lazy = false,
    config = function ()
      require("notify").setup {
        stages = 'fade_in_slide_out',
        background_colour = 'FloatShadow',
        timeout = 5000,
      }
      vim.notify = require('notify')
    end
  }
}

return plugins
