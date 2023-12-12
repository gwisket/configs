vim.opt.termguicolors = true
vim.wo.number = true
vim.opt.signcolumn = 'yes'
vim.opt.colorcolumn = '81'

-- vim.o.background = "dark"
vim.g.seoul256_contrast = false
require('seoul256')

vim.cmd [[hi Normal ctermbg=NONE guibg=NONE]]
vim.cmd [[hi NormalNC ctermbg=NONE guibg=NONE]]
vim.cmd [[hi NvimTreeNormal ctermbg=NONE guibg=NONE]]
vim.cmd [[hi NvimTreeNormalNC ctermbg=NONE guibg=NONE]]
vim.cmd [[hi SignColumn ctermbg=NONE guibg=NONE]]
vim.cmd [[hi DiagnosticVirtualTextWarn ctermbg=NONE guibg=NONE]]
vim.cmd [[hi DiagnosticVirtualTextOk ctermbg=NONE guibg=NONE]]
vim.cmd [[hi DiagnosticVirtualTextHint ctermbg=NONE guibg=NONE]]
vim.cmd [[hi DiagnosticVirtualTextInfo ctermbg=NONE guibg=NONE]]
vim.cmd [[hi DiagnosticVirtualTextError ctermbg=NONE guibg=NONE]]
vim.cmd [[hi VertSplit ctermbg=NONE guibg=NONE]]
vim.cmd [[hi StatusLine ctermbg=NONE guibg=NONE]]
vim.cmd [[hi StatusLineNC ctermbg=NONE guibg=NONE]]
vim.cmd [[hi NvimTreeWinSeparator ctermbg=NONE guibg=NONE]]
vim.cmd [[hi NvimTreeStatusLineNC ctermbg=NONE guibg=NONE]]
vim.cmd [[hi NvimTreeEndOfBuffer ctermbg=NONE ctermfg=black guibg=NONE guifg=black]]
