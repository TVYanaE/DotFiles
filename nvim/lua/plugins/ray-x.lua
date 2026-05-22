return {
    "ray-x/lsp_signature.nvim",
    event = "InsertEnter",
    opts = {
        bind = true,
        handler_opts = {
          border = "rounded"
        },
        hint_enable = true,
        silent = true,          -- Глушит сообщения об ошибках в консоли
        always_trigger = false, -- Не спамить запросами, если сервер не уверен
    },
  -- or use config
  -- config = function(_, opts) require'lsp_signature'.setup({you options}) end
}
