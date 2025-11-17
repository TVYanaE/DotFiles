return {
    "williamboman/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "lua_ls",
            "vimls",
            "sqlls",
            "rust_analyzer",
            "html",
            "bashls",
            "cssls",
            "ts_ls",
            "jsonls",
            "taplo",
            "markdown_oxide",
        },
    },
    dependencies = {
        {
            "williamboman/mason.nvim",
            opts = {},
        },
        "neovim/nvim-lspconfig",
    },
}
