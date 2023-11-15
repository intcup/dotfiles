local vim = vim
local opt = vim.opt
local key = vim.keymap

vim.g.mapleader = " "

opt.number = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.laststatus = 3

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"

require("colors")

key.set('n', '<leader>f', require("fzy").edit)
