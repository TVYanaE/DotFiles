-- Basic Settings
vim.opt.number = true -- line numbers 
vim.opt.rnu = true -- relative line numbers 

vim.opt.statusline = "%t %m %= %l:%c"

vim.opt.termsync = false
-- Settings for clipbloard 
vim.opt.clipboard = "unnamedplus"

-- Setting for cursor
vim.opt.guicursor = "n-v-c:block,i:ver25"

-- Tabulations / Indentation
vim.opt.tabstop = 4 -- visual amount of space in /t cymbol
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.grepprg = "rg --vimgrep"
vim.opt.grepformat = "&f:%l:%c:%m"

-- Search Settings
vim.opt.ignorecase = true -- Case-insensitive search
vim.opt.incsearch = true -- Show matches as you type

-- Visual Settings
vim.opt.termguicolors = true -- Enable 24-bit colors

-- Tabulations / Indentation
vim.opt.tabstop = 4 -- visual amount of space in /t cymbol
vim.opt.grepprg = "rg --vimgrep"
vim.opt.grepformat = "&f:%l:%c:%m"

-- Search Settings
vim.opt.ignorecase = true -- Case-insensitive search
vim.opt.incsearch = true -- Show matches as you type

-- Visual Settings
vim.opt.termguicolors = true -- Enable 24-bit colors
vim.opt.signcolumn = "yes" -- Always show sign column
--vim.opt.colorcolumn = "100" -- Show column at 100 characters
vim.opt.showmatch = true -- Highlight matching brackets

-- Settings for showing only warnings and error in editor
vim.diagnostic.config({
    severity_sort = true,
    virtual_text = false,
    underline = {
        severity = { min = vim.diagnostic.severity.WARN }, -- only WARN и ERROR
    },
    signs = {
        severity = { min = vim.diagnostic.severity.WARN },
    },
})
