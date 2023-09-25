return {
  'lukas-reineke/indent-blankline.nvim', -- Add indentation guides even on blank lines
  config = function()
    require('indent_blankline').setup {
      char = '┊',
      show_trailing_blankline_indent = false,
      show_current_context = true,
      show_current_context_start = true,
    }
  end
}
