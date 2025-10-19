return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function()
    require("chatgpt").setup({
      api_key_cmd = "echo $OPENAI_API_KEY",
      openai_params = {
        model = "gpt-4o-mini", -- or "gpt-4o" (Sonnet 4)
        temperature = 0.7,
      },
    })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
}
