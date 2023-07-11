M = {}

M.setup = function(url, lang, branch)
	res, _ = pcall(vim.treesitter.start)
	if (not res) then
		branch = branch or 'main'
		file = string.gsub(url, ".*/", "")
		inst_dir = "~/.local/share/nvim/site/"
		command = {
			"if [ ! -d /tmp/" .. file .. " ]; then",
			"git clone --depth=1 https://github.com/" .. url .. " /tmp/" .. file,
			"fi",
			"cd /tmp/" .. file,
			"mkdir -p " .. inst_dir .. "{parser,queries/" .. lang .. "}",
			"gcc -o " .. inst_dir .. "/parser/" .. lang ..".so -shared src/*.c* -Isrc",
			"cp queries/highlights.scm " .. inst_dir .. "/queries/" .. lang
		}
		require('term').term(table.concat(command, "\n"), function() 
				vim.treesitter.start()
			end, true)
	end
end

return M
