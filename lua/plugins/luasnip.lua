return {
  {
    "L3MON4D3/LuaSnip",
    version = "2.*", -- Use latest stable
    dependencies = {
      "rafamadriz/friendly-snippets", -- Optional: prebuilt snippets
    },
    config = function()
      local luasnip = require("luasnip")
      -- Load VSCode-style snippets
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
}
