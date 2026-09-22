local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = require("plugins.lspconfig"),
  },
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
      },
    },
  },
}
return plugins
