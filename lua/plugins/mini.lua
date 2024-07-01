return {
	'echasnovski/mini.nvim',
	version = false,
	config = function()
		-- Autopairs
		require('mini.pairs').setup()
		-- Surround actions
		require('mini.surround').setup()
	end,
}
