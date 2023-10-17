return {
  "stevearc/overseer.nvim",
  dependencies = {
    "stevearc/resession.nvim",
  },
  config = function ()
    require('resession').setup()
    require('overseer').setup()
  end
}
