return {
	"rcarriga/nvim-notify",
	config = function()
		require("notify").setup({
			background_colour = "#000000",
			vim.keymap.set("n", "<Leader>sn", "<CMD>lua require('telescope').extensions.notify.notify()<CR>")
		})
    vim.keymap.set("n", "<leader>dn", ":lua require('notify').dismiss()<CR>")
	end
}
