vim.g.vimtex_compiler_method = "tectonic"

vim.api.nvim_create_autocmd("FileType", {
	pattern = "quarto",
	callback = function()
		vim.b.vimtex_main = vim.fn.expand("%:p")
		vim.fn["vimtex#init"]()
	end,
})
