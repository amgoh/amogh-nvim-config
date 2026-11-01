vim.lsp.enable( {
  'lua_ls',
  'gopls',
  'rust-analyzer',
  'clangd',
  'ts_ls',
  'html',
  'basedpyright'
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
  end,
})


vim.diagnostic.config({
  virtual_lines = {
    current_line = true,
  }
})
