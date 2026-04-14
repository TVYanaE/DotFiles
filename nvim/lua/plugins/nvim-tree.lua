--[[ return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup({
            sort = {
            sorter = "case_sensitive",
        },
        view = {
           
            adaptive_size = true,
        },
        renderer = {
            group_empty = true,
        },
        filters = {
            dotfiles = false,
            git_ignored = false,
        },
    })
    end,
} ]]
return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        -- Calc size for floating window
        local VIEW_WIDTH_FIXED = 100
        local VIEW_HEIGHT_FIXED = 30

        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                -- Turn on floating mode
                float = {
                    enable = true,
                    open_win_config = function()
                        local screen_w = vim.opt.columns:get()
                        local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
                        local window_w = screen_w * 0.8 
                        local window_h = screen_h * 0.8 
                        local window_w_int = math.floor(window_w)
                        local window_h_int = math.floor(window_h)
                        local center_x = (screen_w - window_w) / 2
                        local center_y = ((vim.opt.lines:get() - window_h) / 2) - vim.opt.cmdheight:get()
                        
                        return {
                            border = "rounded",
                            relative = "editor",
                            row = center_y,
                            col = center_x,
                            width = window_w_int,
                            height = window_h_int,
                        }
                    end,
                },
                width = function()
                    return math.floor(vim.opt.columns:get() * 0.8)
                end,
            },
            renderer = {
                group_empty = true,
                -- Git icons 
                icons = {
                    show = {
                        git = true,
                        file = true,
                        folder = true,
                        folder_arrow = true,
                    },
                },
            },
            filters = {
                dotfiles = false,
                -- Hide targets
                custom = { "^.git$", "^target$" },
                git_ignored = false,
            },
            -- Close Tree after picking file 
            actions = {
                open_file = {
                    quit_on_open = true,
                },
            },
        })
    end,
}
