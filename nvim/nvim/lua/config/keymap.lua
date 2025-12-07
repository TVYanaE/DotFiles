-- Define keymaps for normal mode
vim.keymap.set("n", "<Leader>s", ":write<CR>", { silent = true, noremap = true }) -- for save with space + s


-- Keymaps for NvimTree plugin
vim.keymap.set("n", "<Leader>t", ":NvimTreeToggle<CR>", { silent = true, noremap = true })


-- Keymaps for BufferLine plugin
-- Switch to the next tab
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true, noremap = true })

-- Switch to the prev tab
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { silent = true, noremap = true })

-- Close tab 
vim.keymap.set("n", "<Leader>q", function()
    local bufnr = 0 -- current buffer number
    -- Check modification of buffer
    if not vim.api.nvim_buf_get_option(bufnr, "modified") then
        require("bufdelete").bufdelete(bufnr, true)
    else 
        vim.api.nvim_echo({{ "Buffer is modified! Save it first.", "WarningMsg" }}, false, {})
    end
end, { silent = true, noremap = true})

-- Close tab force
vim.keymap.set("n", "<Leader>fq", function()
    local bufnr = 0 -- current buffer number
    require("bufdelete").bufdelete(bufnr, true)
end, { silent = true, noremap = true })

-- Change position of buffer to tne next position
vim.keymap.set("n", "<Leader>bn", ":BufferLineMoveNext<CR>", { silent = true, noremap = true })

-- Change position of buffer to tne prev position
vim.keymap.set("n", "<Leader>bp", ":BufferLineMovePrev<CR>", { silent = true, noremap = true })

-- Keymap for hover 
vim.keymap.set("n", "<C-k>", function ()
    vim.lsp.buf.hover()
end, { silent = true, noremap = true})


-- Keymap for go to definition
vim.keymap.set("n", "gd", function ()
    vim.lsp.buf.definition()
end, { silent = true, noremap = true })


-- Keymap for search
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")


-- Define keymaps for visual mode



-- Define keymaps for inser mode
vim.keymap.set("i", "<C-h>", "<Left>", { silent = true, noremap = true })
vim.keymap.set("i", "<C-j>", "<Down>", { silent = true, noremap = true })
vim.keymap.set("i", "<C-k>", "<Up>", { silent = true, noremap = true })
vim.keymap.set("i", "<C-l>", "<Right>", { silent = true, noremap = true })

vim.keymap.set("i", "<C-s>", function ()
    vim.lsp.buf.signature_help()
end, { silent = true, noremap = true })
