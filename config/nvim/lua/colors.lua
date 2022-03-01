-- vim.opt.termguicolors = true

function hi(name, fg, bg, gui)
	local cmd = 'hi '..name
	if fg then cmd = cmd..' ctermfg='..fg end
	if bg then cmd = cmd..' ctermbg='..bg end
	if gui then cmd = cmd..' cterm='..gui end
	vim.cmd(cmd)
end

function hi_link(name, link)
	if not name then return end
	if not link then return end
	local cmd = 'hi! link '..name..' '..link
	vim.cmd(cmd)
end

-- Colors
-- NVIM UI
hi('LineNr', 8)
hi('Comment', 8)
hi('NonText', 8)
hi('StatusLine', 'NONE', 0, 'NONE')
hi('StatusLineNC', 8, 0, 'NONE')
hi('VertSplit', 8, 'NONE', 'NONE')
hi('Pmenu', 'NONE', 0, 'NONE')
hi('PmenuSel', 6, 8, 'NONE')
hi('PmenuThumb', 0, 8, 'NONE')
hi('PmenuSbar', 0, 0, 'NONE')

-- Syntax Colors
hi('PreProc', 2)
hi('Identifier', 4)
hi('Statement', 6)
hi('Constant', 3)
hi('Number', 12)
hi('Type', 5)
