return {
    -- the colorscheme should be available when starting Neovim
    {
        "rakr/vim-one",
        enabled = false,
        lazy = false, -- load during startup
        priority = 1000, -- load before other plugins
        config = function()
            vim.cmd.colorscheme "one"
        end,
    },
    {
        "catppuccin/nvim",
        -- enabled = false,
        name = "catppuccin",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme "catppuccin-latte"
        end,
    },
}
