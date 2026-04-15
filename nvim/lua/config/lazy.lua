-- Bootstrap lazy.nvim 
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then 
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
    spec = {
        -- import plugins
        { import = "plugins" },
    },

    install = { colorscheme = { "habamax" } },
    checker = { enabled = true },
})


require('nvim-treesitter').install(
    { 
        "lua", "vim", "vimdoc", "sql", "make", "markdown_inline", "xml",
        "rust", "javascript", "typescript", "html", "css", "bash", "json", "toml",
        "wgsl"
    }
):wait(300000) -- wait max. 5 minutes

vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    pcall(vim.treesitter.start)
    vim.bo.syntax = "off"
  end,
})
