return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = vim.lsp.protocol.make_client_capabilities()

    lspconfig.clangd.setup({
      on_attach = function(client, bufnr)
        client.server_capabilities.signatureHelpProvider = false
      end,
      capabilities = capabilities,
    })
  end,
}
