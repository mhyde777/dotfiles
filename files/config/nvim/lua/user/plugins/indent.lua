return {
  'lukas-reineke/indent-blankline.nvim',
  config = function()
    require('ibl').setup {
      char = '┆',
      show_trailing_blankline_indent = false,
      show_current_context = true,
      show_current_context_start = true,
    }
    require('ibl').overwrite {
      exclude = {
        filetypes = {
          'dashboard',
        }
      }
    }
  end
}
