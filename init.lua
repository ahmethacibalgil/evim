vim.cmd("set expandtab")     -- spaces instead of tab character
vim.cmd("set tabstop=2")     -- space count
vim.cmd("set softtabstop=2") -- acts if spaces are tab characters
vim.cmd("set shiftwidth=2")  -- indentation space
vim.g.mapleader = ' '        -- set leader key as space
vim.cmd("command Nohi nohlsearch")
vim.opt.number = true
--vim.keymap.set("n", "<leader>fd", "<Cmd>Ex<CR>")
vim.opt.relativenumber = true

print("prefs loaded")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
local opts = {}
require("lazy").setup("plugins", opts)

print("Neovim has succesfully started.")
