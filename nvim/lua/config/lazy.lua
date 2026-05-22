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
        "wgsl", "c", "cpp" 
    }
):wait(300000) -- wait max. 5 minutes


vim.g.riscv_asm_all_enable = true

vim.g.riscv_asm_isa = 'RV64GC'

vim.api.nvim_create_autocmd("FileType", {
    callback = function()
        pcall(vim.treesitter.start)
        vim.bo.syntax = "on"
    end,
})

-- 1. Регистрация расширений
vim.filetype.add({
  extension = {
    s = 'riscv_asm',
    S = 'riscv_asm',
    riscv = 'riscv_asm',
  },
})

-- 2. Фикс ошибок плагина и принудительный синтаксис
vim.api.nvim_create_autocmd({ "BufReadPost", "BufWinEnter" }, {
  pattern = { "*.s", "*.S", "*.riscv" },
  callback = function()
    -- Сначала определяем переменные, на которые ругается плагин
    vim.b.riscv_asm_all_enable = 1
    
    vim.defer_fn(function()
      if vim.api.nvim_buf_is_valid(0) then
        -- Устанавливаем тип
        vim.bo.filetype = "riscv_asm"
        
        -- Снимаем блокировки
        vim.bo.readonly = false
        vim.bo.modifiable = true
        
        -- Включаем синтаксис и выключаем мешающий treesitter
        vim.cmd("syntax on")
        pcall(vim.treesitter.stop)
      end
    end, 20)
  end,
})
