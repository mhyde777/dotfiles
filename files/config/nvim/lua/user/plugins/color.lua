return {
  "catppuccin/nvim",
  -- Hack to install all wanted colorthemes
  dependencies = {
    "sainnhe/sonokai",
  },
  config = function()
    vim.cmd.colorscheme "sonokai"
  end
}
