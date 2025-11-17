return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
      "nvim-tree/nvim-web-devicons",
      "famiu/bufdelete.nvim",
  },
  config = function()
    require("bufferline").setup({
        options = {
            sort_by = "insert_after_current",
            close_command = "lua require('bufdelete').bufdelete(%d)",
            right_mouse_command = "lua require('bufdelete').bufdelete(%d)",
            left_mouse_command = "buffer %d",
            offsets = {
                {
                filetype = "NvimTree",
                text = "Explorer",
                text_align = "left",
                separator = true,
                },
            },
        },
    }) 
  end,
}
