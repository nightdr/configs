-- Leaders
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = "a"

vim.opt.background = "light"

-- Indentation (see https://stackoverflow.com/a/51995699)
vim.opt.tabstop = 4
vim.opt.softtabstop = -1
vim.opt.shiftwidth = 0
vim.opt.expandtab = true

require("config.lazy")

-- TODO move this to after?
local telescopeBuiltIn = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescopeBuiltIn.find_files, { desc = "Telescope find files" })

