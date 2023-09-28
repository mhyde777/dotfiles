return {
	'nvim-telescope/telescope.nvim',
	branch = '0.1.x',
	dependencies = {
    'nvim-lua/plenary.nvim',
    'debugloop/telescope-undo.nvim',
    "smartpde/telescope-recent-files",
  },
	config = function()
		require('telescope').setup ({
      extensions = {
        undo = {
          use_delta = true,
          mappings = {
          },
        },
      },
			defaults = {
				mappings = {
					i = {
						['<C-u>'] = false,
						['<C-d>'] = false,
						["<C-j>"] = require('telescope.actions').move_selection_next,
						["<C-k>"] = require('telescope.actions').move_selection_previous,
          },
        },
      },
    })
    require("telescope").load_extension("undo")
    vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
    vim.keymap.set('n', '<leader>fd', ":Telescope find_files hidden=true<CR>", { desc = '[S]earch [D]otfiles' })
    vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
    vim.keymap.set('n', '<leader>fc', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
    vim.keymap.set('n', '<leader>fs', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
    vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
    vim.keymap.set('n', '<leader>fg', require('telescope.builtin').git_status, { desc = '' })
    vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
    -- Enable telescope fzf native, if installed
    pcall(require('telescope').load_extension, 'fzf')
    -- See `:help telescope.builtin`
    vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
    vim.keymap.set('n', '<leader>sb', function()
      -- You can pass additional configuration to telescope to change theme, layout, etc.
      require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
      })
    end, { desc = '[/] Fuzzily search in current buffer]' })
    require('telescope').load_extension("recent_files")
  end,
  vim.keymap.set("n", "<leader>u", ":Telescope undo<CR>"),
  vim.keymap.set("n", "<leader>fr", "<Cmd>lua require('telescope').extensions.recent_files.pick()<CR>"),
  vim.api.nvim_set_keymap("n", "<Leader><tab>", "<Cmd>lua require('telescope.builtin').commands()<CR>", {noremap=false}),
}
