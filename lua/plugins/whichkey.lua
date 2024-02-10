return {
  "folke/which-key.nvim", -- Plugin to enhance keybinding management
  event = "VeryLazy",     -- Event to trigger loading of the plugin
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    -- Configuration options for the plugin (you can add options here)
  },
  config = function()
    local wk = require("which-key")
    wk.register({
      ["<leader>"] = { -- Keybindings under the leader key
        f = {          -- File-related keybindings
          name = "+file",
          f = { "<cmd>Telescope find_files<cr>", "Dosya Bul." },
          r = { "<cmd>Telescope oldfiles<cr>", "Son Dosyayı Aç." },
          o = { "<cmd>Neotree<cr>", "Klasörleri Ağacını Göster." },
        },
        g = { -- LSP-related keybindings
          name = "LSP",
          e = { vim.diagnostic.open_float, "Diagnostic - Open Float" },
          q = { vim.diagnostic.setloclist, "Diagnostic - Open List" },
          d = { vim.lsp.buf.format, "LSP - Format Text" },
          g = { -- Keybindings for navigation
            name = "Go to...",
            D = { vim.lsp.buf.declaration, "LSP - Go to Declaration" },
            d = { vim.lsp.buf.definition, "LSP - Go to Definition" },
            n = { vim.diagnostic.goto_next, "Diagnostic - Go to next diagnostic" },
            p = { vim.diagnostic.goto_prev, "Diagnostic - Go to prev diagnostic" },
          },
        },
        K = { vim.lsp.buf.hover, "LSP - Hover Documentation" }, -- Show hover documentation
        c = { vim.lsp.buf.code_action, "LSP - Code Actions" },  -- Execute code actions
      }
    })
  end,
}
