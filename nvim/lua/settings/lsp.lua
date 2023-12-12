local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require('lspconfig')

local servers = {
  'clangd',
  'emmet_ls',
  'eslint',
  'gopls',
  'intelephense',
  'jsonls',
  'lua_ls',
  'marksman',
  'yamlls',
  'texlab',
  'html',
  'tsserver',
  'pyright',
  'dockerls'
}

for _, server in pairs(servers) do
  if server == 'clangd' then
    lspconfig[server].setup({
      capabilities = capabilities,
      cmd = { 'clangd' },
      filetypes = { 'h', 'c', 'hpp', 'cpp', 'objc', 'objcpp' },
      init_options = {
        clangdFileStatus = true
      },
      root_dir = lspconfig.util.root_pattern('.git', 'compile_commands.json')
    })
  else
    lspconfig[server].setup({
      capabilities = capabilities
    })
  end
end

