-- Basic Settings
vim.opt.number = true -- line numbers 

-- Settings for clipbloard 
vim.opt.clipboard = "unnamedplus"

-- Tabulations / Indentation
vim.opt.tabstop = 4 -- visual amount of space in /t cymbol
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


vim.diagnostic.config({
    severity_sort = true,
    virtual_text = false,
    underline = {
        severity = { min = vim.diagnostic.severity.WARN }, -- только WARN и ERROR
    },
    signs = {
        severity = { min = vim.diagnostic.severity.WARN },
    },
})
