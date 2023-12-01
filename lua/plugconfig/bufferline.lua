vim.cmd([[set showtabline=0]])
require("bufferline").setup{
options = {
    mappings = true,
    diagnostics = "nvim_lsp",
    offsets = {
      {
        filetype = "neo-tree",
        text = "Explorer",
        highlight = "Directory",
        text_align = "left"
      }
    },
    view = "multiwindow",
  },
 }
require('barbecue').setup{
  create_autocmd=false,
}

