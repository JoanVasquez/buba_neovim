return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}

      -- YAML + Helm templates
      opts.servers.yamlls = {
        settings = {
          yaml = {
            schemas = {
              ["https://json.schemastore.org/kubernetes.json"] = {
                "/*.k8s.yaml",
                "/templates/*.yaml",
              },
            },
            validate = true,
            completion = true,
            hover = true,
          },
        },
      }
    end,
  },
}
