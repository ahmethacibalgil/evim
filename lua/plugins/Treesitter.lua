return {
  'nvim-treesitter/nvim-treesitter',
  -- or
  build = ':TSUpdate',

  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({

      ensure_installed = { "python", "lua", "vim", "vimdoc", "javascript", "html", "css", "typescript", "c_sharp", "json", "xml" },
      sync_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
