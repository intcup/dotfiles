return {
	cmd = function(input, callback)
		local file = vim.fn.tempname()
		require('terminal').terminal(input .. ' | fzy -l 50 > ' .. file, function()
			local f = io.open(file, 'r')
			local stdout = f:read('*all')
			callback(stdout)
		end)
	end,
	pick = function(values, callback)
		for k, v in pairs(values) do
			values[k] = '\"' .. v .. '\"'
		end
		cmd = "echo " .. table.concat(values, "\\\\n")
		print(cmd)
		require('fzy').cmd(cmd, callback)
	end,
	edit = function()
		require('fzy').cmd('fd', function(res)
			vim.cmd(':e ' .. res)
		end)
	end
}
