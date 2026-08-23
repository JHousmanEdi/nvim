return {
  {
    "isak102/ghostty.nvim",
    -- lazy = false,
    event = "VeryLazy",
    config = function()
      require("ghostty").setup()
    end,
  },
  {
    "bezhermoso/tree-sitter-ghostty",
    lazy = false,
    build = "make nvim_install",
  },
}
