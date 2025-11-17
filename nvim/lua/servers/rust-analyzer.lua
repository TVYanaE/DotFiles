vim.lsp.config('rust_analyzer', {
  -- Server-specific settings. See `:help lsp-quickstart`
    settings = {
        ['rust-analyzer'] = { 
            inlayHints = {
                enable = true,
                typeHints = true,
                chainingHints = true,
                parameterHints = false, -- Хинты параметров
                closureCaptureHints = false, -- Хинты захвата замыканий
                bindingModeHints = false, -- Хинты режима привязки
                discriminantHints = false, -- Хинты дискриминантов
                implicitArgumentHints = false, -- Хинты неявных аргументов
                fieldHint = false, -- Хинты полей
            },
        },
    },
    on_attach = function(client, bufnr)
        if client.name == "rust_analyzer" then
            vim.lsp.inlay_hint.enable(true)
        end
    end,
})
