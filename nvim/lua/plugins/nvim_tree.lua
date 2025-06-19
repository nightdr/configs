return {
    {
        "nvim-tree/nvim-tree.lua",
        lazy = false,
        opts = {},
        init = function ()
            local map = function(keys, func)
                vim.keymap.set("n", keys, func, { noremap = true, silent = true })
            end

            -- toggle tree
            map(
                -- equivalent to <A-F1>, use insert mode -> <C-V> YOUR_KEY to see what the mapping is
                --  see https://vimhelp.org/insert.txt.html#i_CTRL-V for more detail
                "<F49>",
                function ()
                    vim.cmd("NvimTreeToggle")
                end
            )

            -- open tree by default
            require("nvim-tree.api").tree.toggle({ focus=false })
            -- switch to normal window since tree gets due to window race conditions
            vim.schedule(
                function ()
                    vim.cmd("wincmd l")
                end
            )
        end,
    },
}
