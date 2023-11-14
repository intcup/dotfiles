keys = {
	{'<leader>f', ':lua require("fzy").edit()<CR>'},
}
for k, v in pairs(keys) do
	vim.keymap.set('n', v[1], v[2], nil)
end
