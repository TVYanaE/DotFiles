return {
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "rcarriga/nvim-dap-ui",
            "nvim-neotest/nvim-nio",
            "jay-babu/mason-nvim-dap.nvim",
        },
        config = function()
            local dap = require("dap")
            local dapui = require("dapui")

            require("mason-nvim-dap").setup({
                ensure_installed = { "codelldb" },
                handlers = {},
            })

            -- UI init 
            dapui.setup({
                layouts = {
                    {
                        elements = {
                            { id = "scopes", size = 1.0 },
                        },
                        position = "right", 
                        size = 60,          
                    },
                },
                controls = {
                    enabled = true,
                    element = "scopes",
                },
            })

            -- Auto Open/Close 
            dap.listeners.before.attach.dapui_config = function() dapui.open() end
            dap.listeners.before.launch.dapui_config = function() dapui.open() end
            dap.listeners.before.event_terminated.dapui_config = function() dapui.close() end
            dap.listeners.before.event_exited.dapui_config = function() dapui.close() end

            
            dap.configurations.rust = {
                {
                    name = "Launch Rust",
                    type = "codelldb",
                    request = "launch",
                    program = function()
                        local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
                        local executable = vim.fn.getcwd() .. "/target/debug/" .. project_name
                        if vim.fn.executable(executable) == 1 then
                            return executable
                        end
                        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/target/debug/', 'file')
                    end,
                    cwd = '${workspaceFolder}',
                    stopOnEntry = false,
                },
            }

            -- Hot keys 
            vim.keymap.set('n', '<F5>', function() dap.continue() end, { desc = "Debug: Start/Continue" })
            vim.keymap.set('n', '<F10>', function() dap.step_over() end, { desc = "Debug: Step Over" })
            vim.keymap.set('n', '<F11>', function() dap.step_into() end, { desc = "Debug: Step Into" })
            vim.keymap.set('n', '<F12>', function() dap.step_out() end, { desc = "Debug: Step Out" })
            vim.keymap.set('n', '<leader>b', function() dap.toggle_breakpoint() end, { desc = "Debug: Toggle Breakpoint" })
            vim.keymap.set('n', '<leader>dq', function() dap.terminate() end, { desc = "Debug: Terminate" })
            vim.keymap.set('n', '<leader>B', function()
                dap.set_breakpoint(vim.fn.input('Breakpoint condition: '))
            end, { desc = "Debug: Breakpoint Condition" })
            
            vim.keymap.set('n', '<leader>du', function() dapui.toggle() end, { desc = "Debug: Toggle UI" })
        end,
    },
}
