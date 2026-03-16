return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      -- This is the magic part
      image = {
        enabled = true,
        doc = {
          -- This allows images to render inside Markdown files automatically
          inline = true,
          float = true,
          max_width = 80,
          max_height = 40,
        },
      },
    },
    keys = {
      -- Optional: A keybind to manually toggle an image preview if it's not showing
      { "<leader>ip", function() Snacks.image.hover() end, desc = "Image Preview Hover" },
    },
  },
}
