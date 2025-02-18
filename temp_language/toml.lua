return {
  for_cat = "lazyVimExtras.language.toml",

  recommended = function()
    return LazyVim.extras.wants({
      ft = "toml",
      root = "*.toml",
    })
  end,
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      taplo = {},
    },
  },
}
