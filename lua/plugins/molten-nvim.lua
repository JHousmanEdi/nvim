return {
  {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    dependencies = { "folke/snacks.nvim" },
    build = ":UpdateRemotePlugins",
    init = function()
      vim.g.molten_image_provider = "snacks.nvim" -- use your custom snacks-based image provider
      vim.g.molten_output_win_max_height = 20
    end,
  },
}
