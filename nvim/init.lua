-- Global variables

-- Leaders
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = false

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = "a"

vim.opt.background = "light"

-- Disable showing the mode in the status line since we're using a status line plugin
vim.opt.showmode = false

-- Indentation (see https://stackoverflow.com/a/51995699)
vim.opt.tabstop = 4
vim.opt.softtabstop = -1
vim.opt.shiftwidth = 0
vim.opt.expandtab = true

-- Keymaps
-- Have escape remove highlight after searching
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Auto commands
-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

require("config.lazy")

-- TODO move this to after?
local telescopeBuiltIn = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescopeBuiltIn.find_files, { desc = "Telescope find files" })

