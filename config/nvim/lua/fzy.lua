return {
	edit = function(cmd)
		local file = vim.fn.tempname()
		require('terminal').terminal('fd | fzy > ' .. file, function()
			local f = io.open(file, 'r')
			local stdout = f:read('*all')
			vim.cmd(':e ' .. stdout)
		end)
	end
}
