return {
  {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    config = function()
      require("lspsaga").setup({})
    end,
    keys = {
      { "gp", "<cmd>Lspsaga peek_definition<cr>", desc = "Peek Definition" },
    },
  },
}
