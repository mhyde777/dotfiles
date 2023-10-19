return {
  "stevearc/resession.nvim",
  config = function ()
    local resession = require("resession")
    resession.setup({
      autosave = {
        enabled = true,
        interval = 30,
        notify = false,
      },
    })
    vim.keymap.set('n', '<leader>ss', resession.save)
    vim.keymap.set('n', '<leader>sl', resession.load)
    vim.keymap.set('n', '<leader>sd', resession.delete)
  end
}
