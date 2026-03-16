return {
  ----------------------------------------------------------------------------
  -- Visual scroll‑position indicator  ---------------------------------------
  ----------------------------------------------------------------------------
  {
    "petertriho/nvim-scrollbar",

    -- Load after a buffer is actually displayed so it doesn’t block startup.
    event = "BufReadPost",

    -- Key‑map ---------------------------------------------------------------
    keys = {
      {
        "<leader>ms",
        function() require("scrollbar").toggle() end,
        desc = "Toggle Scrollbar",
      },
    },

    -- Options passed to require("scrollbar").setup() ----------------------
    opts = {
      -----------------------------------------------------------------------
      -- Look & feel ---------------------------------------------------------
      -----------------------------------------------------------------------
      handle = { color = "#666666" },       -- the draggable thumb
      show_in_active_only = true,            -- hide in inactive splits
      excluded_filetypes = {
        "prompt", "TelescopePrompt", "NvimTree", "lazy", "alpha",
      },

      -----------------------------------------------------------------------
      -- Mark definitions (diagnostics, search, git) -------------------------
      -----------------------------------------------------------------------
      marks = {
        Search     = { color = "#ff9e64" },
        Error      = { color = "#db4b4b" },
        Warn       = { color = "#e0af68" },
        Info       = { color = "#0db9d7" },
        Hint       = { color = "#10B981" },
        GitAdd     = { color = "#587c0c" },
        GitChange  = { color = "#0c7d9d" },
        GitDelete  = { color = "#94151b" },
      },
    },

    -------------------------------------------------------------------------
    -- Initialisation --------------------------------------------------------
    -------------------------------------------------------------------------
    config = function(_, opts)
      local sb = require("scrollbar")
      sb.setup(opts)

      -- Plug‑in integrations -------------------------------------------------
      -- Search highlights (/, *, #)  ---------------------------------------
      require("scrollbar.handlers.search").setup()
      -- Diagnostics (LSP)  --------------------------------------------------
      require("scrollbar.handlers.diagnostic").setup({
        show_sign = false,
        show_inactive = false,
      })
      -- Git changes via gitsigns.nvim  --------------------------------------
      if pcall(require, "gitsigns") then
        require("scrollbar.handlers.gitsigns").setup()
      end
    end,
  },
}

