return {
  -- 1. The Image Renderer (Essential for Molten)
  {
    "3rd/image.nvim",
    opts = {
      backend = "kitty", -- Since you are using Kitty
      max_width = 100,
      max_height = 12,
      integrations = {
        markdown = { enabled = true },
      },
    },
  },

  -- 2. Molten (The Kernel Runner)
  {
    "benlubas/molten-nvim",
    version = "^1.0.0",
    build = ":UpdateRemotePlugins",
    dependencies = { "3rd/image.nvim" },
    init = function()
      vim.g.molten_image_provider = "image.nvim"
      vim.g.molten_output_win_max_height = 20
      -- This bit helps prevent the error you saw
      vim.g.molten_virt_text_output = true
    end,
  },

  -- 3. Jupytext (To open .ipynb files)
  {
    "GCBallesteros/jupytext.vim",
    config = function()
      vim.g.jupytext_fmt = "py:percent"
    end,
  },
}
