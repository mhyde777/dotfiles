return {
  'lukas-reineke/indent-blankline.nvim',
  config = function()
    require('ibl').setup ()
    require('ibl').overwrite {
      indent = {
        char = "┆",
      },
      exclude = {
        filetypes = {
          'dashboard',
        }
      }
    }
  end
}
