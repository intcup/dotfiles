return {
	setup = function()
		require('terminal').terminal("echo test ; sleep 5", function(res) print(res) end)
	end
}
