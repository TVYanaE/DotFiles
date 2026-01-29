return {
    "williamboman/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "lua_ls",
            "vimls",
            "sqlls",
            "rust_analyzer",
            "harper_ls",
            "html",
            "bashls",
            "cssls",
            "ts_ls",
            "jsonls",
            "taplo",
            "markdown_oxide",
            "wgsl_analyzer",
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
