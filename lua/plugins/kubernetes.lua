return {
  -- 🧩 YAML LSP + Kubernetes schema support
  {
    "b0o/SchemaStore.nvim",
    lazy = true,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        yamlls = {
          settings = {
            yaml = {
              schemas = {
                -- Kubernetes manifests schema
                ["https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.29.0-standalone-strict/all.json"] = "/*.k8s.yaml",
                -- Optional: GitHub Actions
                ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
              },
              validate = true,
              hover = true,
              completion = true,
            },
          },
        },
      },
    },
  },

  -- 🧠 Kubernetes syntax and kubectl integration
  {
    "andrewstuart/vim-kubernetes",
    ft = { "yaml", "k8s" },
  },

  -- 🎯 Helm syntax highlighting and templates
  {
    "towolf/vim-helm",
    ft = { "helm", "yaml", "tpl" },
  },

  -- 🔍 Telescope + fzf.nvim for kubectl commands
  {
    "ibhagwan/fzf-lua",
    cmd = "FzfLua",
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
}
