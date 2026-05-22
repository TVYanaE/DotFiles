-- Define <Leader> button. Not it's space button
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- Define variable for vs theme 
vim.o.background = "dark"

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.s", "*.S" },
  callback = function()
    vim.bo.filetype = "asm"
  end,
})
