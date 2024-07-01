vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("custom-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd("BufEnter", {
	desc = "Shift width and expandtab by language",
	group = vim.api.nvim_create_augroup("custom-shiftwidth", { clear = true }),
	callback = function()
		local widthByFiletype = {
			c = 4,
			cpp = 4,
			css = 2,
			html = 4,
			svelte = 4,
			python = 4,
			javascript = 2,
		}
		local filetype = vim.bo.filetype

		if widthByFiletype[filetype] ~= nil then
			vim.opt.expandtab = true
			vim.opt.shiftwidth = widthByFiletype[filetype]
		else
			vim.opt.expandtab = true
			vim.opt.shiftwidth = 8
		end
	end,
})
