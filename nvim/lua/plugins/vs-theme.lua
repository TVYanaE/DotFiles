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

        --[[ group_overrides = {
        -- Tree-sitter
        ["@keyword"] = { fg = "#569CD6" },

        -- LSP semantic
        ["@lsp.type.keyword"] = { fg = "#569CD6" },

        -- иногда ещё нужно:
        ["@keyword.function"] = { fg = "#569CD6" },
        ["@keyword.return"] = { fg = "#569CD6" },
    },
 ]]
        --color_overrides = {
        --    vscLineNumber = "#FFFFFF",
        --},

        --group_overrides = {
        --    Cursor = { fg = "#0000FF", bg = "#00FF00", bold = true },
        --},
        })
    end,
}
