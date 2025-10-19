return {
  -- LSP & completions for Dockerfiles and docker-compose.yml
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        dockerls = {}, -- Dockerfile language server
        docker_compose_language_service = {}, -- docker-compose YAML support
      },
    },
  },

  -- Snippets and completions for Docker
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    config = function(_, opts)
      local luasnip = require("luasnip")
      require("luasnip.loaders.from_vscode").lazy_load({ include = { "docker" } })
    end,
  },

  -- Syntax highlighting for Dockerfiles
  {
    "ekalinin/Dockerfile.vim",
    ft = { "Dockerfile" },
  },

  -- Optional: better YAML experience for docker-compose
  {
    "b0o/SchemaStore.nvim",
    lazy = true,
    config = function()
      require("lspconfig").yamlls.setup({
        settings = {
          yaml = {
            schemas = require("schemastore").yaml.schemas(),
            validate = true,
          },
        },
      })
    end,
  },
}
