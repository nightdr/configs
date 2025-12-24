return {
    {
        "tpope/vim-sleuth",
    },
    -- python indentation settings
    {
        "Vimjas/vim-python-pep8-indent",
    },
    -- undo tree with <leader> 2 as the shortcut to open the history
    {
        "mbbill/undotree",
        config = function()
            vim.keymap.set("n", "<leader>2", vim.cmd.UndotreeToggle);
        end,
    },
    {
        "echasnovski/mini.nvim",
        config = function()
            -- surround motions
            require("mini.surround").setup()

            local statusline = require "mini.statusline"

            statusline.setup { use_icons = vim.g.have_nerd_font }
            -- You can configure sections in the statusline by overriding their
            -- default behavior. For example, here we set the section for
            -- cursor location to LINE:COLUMN
            ---@diagnostic disable-next-line: duplicate-set-field
            statusline.section_location = function()
                return "%2l:%-2v"
            end
        end,
    },
    {
        "folke/todo-comments.nvim",
        event = "VimEnter",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = { signs = false }
    },
}
