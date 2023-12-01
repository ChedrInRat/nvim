local resession = require('resession')
resession.setup({
  autosave={
    enabled = true,
    interval = 60,
    notify = false,
  },
})

vim.keymap.set('n', '<leader>ss', resession.save)
vim.keymap.set('n', '<leader>sl', resession.load)
vim.keymap.set('n', '<leader>sd', resession.delete)

vim.api.nvim_create_autocmd("VimLeavePre", {
  callback = function()
    resession.save("last")
  end,
})
