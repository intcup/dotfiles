M = {}
M.term = function(cmd, on_exit, del)
	vm = 8
	hm = 2
	del = del or true
	width = math.min(vim.o.columns - (vm * 2) - 2)
	height = math.min(vim.o.lines - (hm * 2) - 2)
	buf = vim.api.nvim_create_buf(false, true)
	vim.api.nvim_open_win(
	buf,
	true,
	{
		relative = 'editor',
		width = width,
		height = height,
		col = vm,
		row = hm,
		style = 'minimal',
		border = 'single',
		noautocmd = true,
	}
	)
	vim.fn.termopen(cmd, {on_exit = function()
		if del then
			vim.api.nvim_buf_delete(buf, { force = true })
		end
	end
	})
end

return M
