return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,  -- важный: не пытаться лениво грузить
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "lua", "vim", "vimdoc", "sql", "make", "markdown_inline",
        "rust", "javascript", "typescript", "html", "css", "bash", "json", "toml",
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          node_decremental = "grm",
          scope_incremental = "grc",
        },
      },
    }
  end,
} 
