return {
    "Mofiqul/vscode.nvim",
    lazy = false,        
    priority = 1000,      
    config = function()
    -- Theme settings
    require("vscode").setup({
        -- style = "light",

        transparent = true,
        italic_comments = true,
        italic_inlayhints = true,
        underline_links = true,
        disable_nvimtree_bg = true,
        terminal_colors = true,

        --color_overrides = {
        --    vscLineNumber = "#FFFFFF",
        --},

        --group_overrides = {
        --    Cursor = { fg = "#0000FF", bg = "#00FF00", bold = true },
        --},
        })
    end,
}
