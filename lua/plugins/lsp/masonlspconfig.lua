return {
  lazy = false,
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup {
      ensure_installed = { "lua_ls", "angularls", "html", "tsserver", "cssls", "eslint", "jsonls" },
    }
  end
}
