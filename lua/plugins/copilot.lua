return {
  {
    "github/copilot.vim",
    event = "InsertEnter",
    config = function()
      -- Do not map <Tab> automatically
      vim.g.copilot_no_tab_map = true

      -- Accept suggestion with Ctrl-J
      vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

      -- Optional tweaks
      vim.g.copilot_assume_mapped = true
      vim.g.copilot_tab_fallback = ""
    end,
  },
}
