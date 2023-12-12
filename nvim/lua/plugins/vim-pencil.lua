local function nvim_create_augroup(name, filetypes, cmd)
  vim.cmd('augroup ' .. name)
  vim.cmd('autocmd!')
  for _, filetype in ipairs(filetypes) do
    vim.cmd('autocmd FileType ' .. filetype .. ' ' .. cmd)
  end
  vim.cmd('augroup END')
end

local filetypes = {'text', 'markdown', 'mkd', 'asciidoc'}
local cmd = 'call pencil#init()'

nvim_create_augroup('pencil', filetypes, cmd)


