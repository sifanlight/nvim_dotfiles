return {
  -- 1. The Kernel Runner (Molten)
  {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- use version 1.0 for stability
    build = ":UpdateRemotePlugins",
    init = function()
      -- these are important for a VS Code feel
      vim.g.molten_image_provider = "image.nvim"
      vim.g.molten_output_win_max_height = 20
    end,
  },

  -- 2. The Text Converter (Jupytext)
  -- Allows you to open .ipynb files directly as python scripts
  {
    "GCBallesteros/jupytext.vim",
    config = function()
      vim.g.jupytext_fmt = "py:percent"
    end,
  },

  -- 3. Quarto (Optional but recommended)
  -- This provides the "Cell" UI and better shortcuts
  {
    "quarto-dev/quarto-nvim",
    dependencies = {
      "jmbuhr/otter.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      lspFeatures = {
        languages = { "python" },
        chunks = "all",
      },
    },
  },
}
