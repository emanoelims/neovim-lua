local status_ok, null_ls = pcall(require, 'null-ls')
if not status_ok then
  return
end

null_ls.setup {
  sources = {
    null_ls.builtins.diagnostics.eslint_d.with {
      only_local = 'node_modules/.bin',
    },
    null_ls.builtins.code_actions.eslint_d.with {
      only_local = 'node_modules/.bin',
    },
    null_ls.builtins.formatting.prettierd.with {
      only_local = 'node_modules/.bin',
    },
  },
  on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
      vim.cmd('autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()')
    end
  end,
}
