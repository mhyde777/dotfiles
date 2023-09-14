return {
  'xiyaowong/nvim-transparent',
  config = function()
    vim.api.nvim_set_keymap("n", "TT", ":TransparentToggle<CR>", {noremap=true})
  end
}
