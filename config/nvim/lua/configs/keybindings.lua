local mapx = require('mapx')

mapx.snoremap('<Tab>', '<CMD>lua require("luasnip").jump(1)<CR>')
mapx.snoremap('<S-Tab>', '<CMD>lua require("luasnip").jump(-1)<CR>')

mapx.nnoremap('<Leader>fa', '<CMD>Telescope<CR>')
mapx.nnoremap('<Leader>ff', '<CMD>Telescope fd<CR>')
mapx.nnoremap('<Leader>fb', '<CMD>Telescope buffers<CR>')
mapx.nnoremap('<Leader>fB', '<CMD>Telescope current_buffer_fuzzy_find<CR>')

mapx.nnoremap('<Leader>gs', '<CMD>Gitsigns stage_hunk<CR>')
mapx.nnoremap('<Leader>gS', '<CMD>Gitsigns stage_buffer<CR>')
mapx.nnoremap('<Leader>gb', '<CMD>Gitsigns blame_line<CR>')
