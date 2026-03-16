return {
  "marcinjahn/gemini-cli.nvim",
  cmd = "Gemini",
  -- Key mappings for common actions
  keys = {
    { "<leader>a/", "<cmd>Gemini toggle<cr>", desc = "Toggle Gemini CLI" },
    { "<leader>aa", "<cmd>Gemini ask<cr>", desc = "Ask Gemini", mode = { "n", "v" } },
    { "<leader>af", "<cmd>Gemini add_file<cr>", desc = "Add File" },
  },
  dependencies = {
    "folke/snacks.nvim",
  },
  -- Use `config = true` to use the default settings, or expand it to a function to customize
  config = true, 
}
