return {
  -- Add the theme plugin
  {
    "sainnhe/gruvbox-material",
    lazy = true, -- Lazy load it instead of always loading it
    priority = 1000,
    config = function()
      -- Configuration (Adjust these to try different "themes" within the git)
      vim.g.gruvbox_material_background = 'medium' -- options: 'hard', 'medium', 'soft'
      vim.g.gruvbox_material_palette = 'material' -- options: 'material', 'mix', 'original'
      vim.g.gruvbox_material_enable_italic = 1
    end,
  },
}
