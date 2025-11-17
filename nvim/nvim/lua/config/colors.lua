vim.cmd.colorscheme("vscode")

-- Colors for modern error notation
vim.api.nvim_set_hl(0, "DiagnosticError", { undercurl = true, sp = "#FF5555" })
vim.api.nvim_set_hl(0, "DiagnosticWarn",  { undercurl = true, sp = "#F1FA8C" })
vim.api.nvim_set_hl(0, "DiagnosticInfo",  { undercurl = true, sp = "#8BE9FD" })
vim.api.nvim_set_hl(0, "DiagnosticHint",  { undercurl = true, sp = "#50FA7B" })

-- Colors for old error notation (For rust)
vim.api.nvim_set_hl(0, "LspDiagnosticsUnderlineError", {
  undercurl = true,
  sp = "#FF5555",
  fg = "NONE",
  bg = "NONE",
})

vim.api.nvim_set_hl(0, "LspDiagnosticsUnderlineWarning", {
  undercurl = true,
  sp = "#F1FA8C",
  fg = "NONE",
  bg = "NONE",
})

vim.api.nvim_set_hl(0, "LspDiagnosticsUnderlineInformation", {
  undercurl = true,
  sp = "#8BE9FD",
  fg = "NONE",
  bg = "NONE",
})

vim.api.nvim_set_hl(0, "LspDiagnosticsUnderlineHint", {
  undercurl = true,
  sp = "#50FA7B",
  fg = "NONE",
  bg = "NONE",
})
