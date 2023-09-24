return {
  'xiyaowong/nvim-transparent',
  config = function()
    require("transparent").setup()
    require("transparent").clear_prefix("NvimTree")
    require("transparent").clear_prefix("BufferLine")
    vim.api.nvim_set_keymap("n", "TT", ":TransparentToggle<CR>", {noremap=true})
  end
}
