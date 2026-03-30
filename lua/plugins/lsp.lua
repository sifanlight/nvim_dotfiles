return {
  "neovim/nvim-lspconfig",
  opts = {
    -- Ensure semantic tokens are enabled for that "VS Code" color depth
    servers = {
      clangd = {
        capabilities = {
          offsetEncoding = { "utf-16" },
        },
        keys = {
          { "<leader>ch", "<cmd>ClangdSwitchSourceHeader<cr>", desc = "Switch Source/Header (C++)" },
        },
      },
      pyright = {},
    },
  },
}
