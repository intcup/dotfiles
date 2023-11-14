local vim = vim
local opt = vim.opt

vim.g.mapleader = " "

opt.number = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.laststatus = 3

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"

require("colors")
require("keymap")
