return {
	servers = {},
	setup = function(config)
		local servers = require('lsp').servers
		if(not servers[vim.bo.filetype]) then
			servers[vim.bo.filetype] = vim.lsp.start_client{
				cmd = config.cmd
			}
		end
		if(servers[vim.bo.filetype]) then
			vim.lsp.buf_attach_client(0, servers[vim.bo.filetype])
		end
	end
}
