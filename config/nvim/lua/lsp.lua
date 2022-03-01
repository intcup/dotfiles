M = {}
function register(server)
	local client_id = vim.lsp.start_client(server)
	vim.lsp.buf_attach_client(0, client_id)
end
