return {
  lazy = false,
  "neovim/nvim-lspconfig",

  config = function()
    -- Setup language servers.
    local lspconfig = require('lspconfig')
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    lspconfig.pyright.setup { capabilities = capabilities, }
    lspconfig.lua_ls.setup { capabilities = capabilities, }
    lspconfig.tsserver.setup { capabilities = capabilities, }
    lspconfig.cssls.setup { capabilities = capabilities, }
    lspconfig.html.setup { capabilities = capabilities, }
    lspconfig.angularls.setup { capabilities = capabilities, }
    lspconfig.jsonls.setup { capabilities = capabilities, }
  end
}
