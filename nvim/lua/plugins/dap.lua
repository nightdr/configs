return {
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "mfussenegger/nvim-dap-python",
            "rcarriga/nvim-dap-ui",
            "theHamsta/nvim-dap-virtual-text",
            "nvim-neotest/nvim-nio",
            "williamboman/mason.nvim",
        },
        config = function()
            local dap = require("dap")
            local ui = require("dapui")

            local ui_setup = {
                layouts = {
                    {
                        elements = {
                            {
                                id = "stacks",
                                size = 1.0,
                            },
                        },
                        position = "left",
                        size = 30,
                    },
                    {
                        elements = {
                            {
                                id = "repl",
                                size = 0.5,
                            },
                            {
                                id = "scopes",
                                size = 0.5,
                            },
                        },
                        position = "bottom",
                        size = 10,
                    },
                    {
                        elements = {
                            {
                                id = "console",
                                size = 1.00,
                            },
                        },
                        position = "right",
                        size = 30,
                    },
                }
            }

            ui.setup(ui_setup)

            -- TODO virtual text not working
            require("nvim-dap-virtual-text").setup()
            require("dap-python").setup("python")

            vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
            vim.keymap.set("n", "<leader>gb", dap.run_to_cursor)

            -- Toggle console window
            vim.keymap.set('n', '<leader>dc', function()
                ui.toggle(3)
            end)

            -- Stop debugging
            vim.keymap.set('n', '<F2>', function()
                dap.terminate()
            end)

            -- Evaluate the variable highlighted or under the cursor
            -- <F56> = Alt + F8
            vim.keymap.set({"n", "v"}, "<F56>", function()
                ui.eval(nil, { enter = true })
            end)


            vim.keymap.set("n", "<F9>", dap.continue)
            vim.keymap.set("n", "<F8>", dap.step_over)
            vim.keymap.set("n", "<F7>", dap.step_into)
            vim.keymap.set("n", "<F10>", dap.step_out)
            vim.keymap.set("n", "<F5>", dap.step_back)
            vim.keymap.set("n", "<F12>", dap.restart)

            local open_dap_ui = function()
                ui.open()
                -- hide the console window by default
                ui.close(3)
            end

            dap.listeners.before.attach.dapui_config = open_dap_ui
            dap.listeners.before.launch.dapui_config = open_dap_ui
            dap.listeners.before.event_terminated.dapui_config = function()
                ui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                ui.close()
            end
        end,
    },
}
