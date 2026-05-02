vim.lsp.config('asm_lsp', {
    -- Настройки запуска
    cmd = { 'asm-lsp' },
    filetypes = { 'asm', 's', 'S', 'vmasm', "riscv_asm" },
    
    -- Пример настроек (если нужны)
    settings = {
        -- Здесь можно указать специфичные для asm-lsp параметры, 
        -- если они появятся в будущем
    },
    
    on_attach = function(client, bufnr)
        -- Любая логика при подключении к ассемблерному файлу
    end,
})
