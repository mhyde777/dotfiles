return {
  'tpope/vim-fugitive',
  config = function()
    vim.api.nvim_set_keymap("n", "<leader>gc", ":Git commit -m \"", {noremap=false})
    vim.api.nvim_set_keymap("n", "<leader>gp", ":Git push -u origin HEAD<CR>", {noremap=false})
    vim.api.nvim_set_keymap("n", "<leader>gb", ":Git blame<CR>", {noremap=false})
    vim.api.nvim_set_keymap("n", "<leader>gs", ":Git<CR>", {noremap=false})
  end
}
