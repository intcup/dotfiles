colors = {
	LineNr = { fg = 8 },
	NonText = { fg = 8 },

	Constant = { fg = 12 },
	Statement = { fg = 14 },
	StatusLine = { fg = 7, bg = 0, cterm='None' },
	Pmenu = { fg = 7, bg = 0 },
	PmenuSel = { fg = 7, bg = 8 },
}

for n, v in pairs(colors) do
	if v.link then
		vim.cmd(':hi ' .. n .. ' link=' .. v.link)
	else
		ctermfg = (v.fg) and ' ctermfg=' .. v.fg or ''
		ctermbg = (v.bg) and ' ctermbg=' .. v.bg or ''
		cterm = (v.cterm) and ' cterm=' .. v.cterm or ''
		vim.cmd(':hi ' .. n .. ctermfg .. ctermbg .. cterm)
	end
end
