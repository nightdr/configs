return {
    {
        "nvim-tree/nvim-tree.lua",
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
        end,
    },
}
