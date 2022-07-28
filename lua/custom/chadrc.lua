local M = {}

M.plugins = {
   user = {
      ["neovim/nvim-lspconfig"] = {
         config = function()
            require "plugins.configs.lspconfig"
            require "custom.plugins.lspconfig"
         end,
      },
      ["jose-elias-alvarez/null-ls.nvim"] = {
         after = "nvim-lspconfig",
         config = function()
            require("custom.plugins.null-ls").setup()
         end,
      },
   },

   override = {
      ["nvim-treesitter/nvim-treesitter"] = {
        ensure_installed = {
          "bash",
          "c",
          "cmake",
          "comment",
          "cpp",
          "css",
          "dart",
          "fish",
          "go",
          "graphql",
          "html",
          "java",
          "javascript",
          "json",
          "lua",
          "make",
          "php",
          "phpdoc",
          "proto",
          "python",
          "regex",
          "scala",
          "svelte",
          "tsx",
          "typescript",
          "vim",
          "vue",
          "yaml",
       },
     },

     ["williamboman/mason.nvim"] = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "angular-language-server",
        "ansible-language-server",
        "bash-language-server",
        "clangd",
        "cmake-language-server",
        "css-lsp",
        "cssmodules-language-server",
        "dockerfile-language-server",
        "deno",
        "emmet-ls",
        "eslint-lsp",
        "golangci-lint",
        "gopls",
        "graphql-language-service-cli",
        "html-lsp",
        "jdtls",
        "json-lsp",
        "marksman",
        "pyright",
        "svelte-language-server",
        "typescript-language-server",
        "vue-language-server",
        "yaml-language-server",

        -- shell
        "shfmt",
        "shellcheck",
      },
    },
   },

   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },

   status = {colorizer = true}
}

M.ui = {theme = "tomorrow_night"}

M.mappings = require "custom.mappings"

return M
