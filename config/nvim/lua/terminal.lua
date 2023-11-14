return {
	terminal = function(cmd, on_exit)
		buf = vim.api.nvim_create_buf(false, true)
		vm = 3
		hm = 5
		local win = vim.api.nvim_open_win(buf,true,{
			relative = 'editor',
			border = 'single',
			width = vim.o.columns - ((hm + 1) * 2),
			height = vim.o.lines - ((vm + 1) * 2),
            col = hm,
            row = vm,
			style = 'minimal',
		})
		vim.fn.termopen({'sh', '-c', cmd}, {on_exit = function()
			vim.api.nvim_buf_delete(buf, {force = true})
			on_exit()
		end})
		vim.api.nvim_command('startinsert')
	end,
}
