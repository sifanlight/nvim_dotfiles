return {
  {
    "projekt0n/github-nvim-theme",
    -- Load before UI so the colors are ready for everything else
    lazy = true,
    priority = 1000,

    config = function()
      require("github-theme").setup({
        -- you can tweak options here, or remove setup() if defaults are fine
      })
    end,
  },
}
