return {
    {
        "romgrk/barbar.nvim",
        init = function ()
            vim.g.barbar_auto_setup = false

            local map = function(keys, func)
                vim.keymap.set("n", keys, func, { noremap = true, silent = true })
            end

            -- Move to previous/next buffer
            map("<A-h>", "<Cmd>BufferPrevious<CR>")
            map("<A-Left>", "<Cmd>BufferPrevious<CR>")
            map("<A-l>", "<Cmd>BufferNext<CR>")
            map("<A-Right>", "<Cmd>BufferNext<CR>")

            -- Close buffer
            map("<A-w>", "<Cmd>BufferClose<CR>")

        end,
        opts = {
            icons = {
                filetype = {
                    enabled = false,
                },
            },
        },
    },
}
