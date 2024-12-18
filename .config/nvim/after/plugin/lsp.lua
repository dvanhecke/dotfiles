local lsp = require('lsp-zero')

lsp.preset('recommended')
require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here
  -- with the ones you want to install
  ensure_installed = {'tsserver', 'rust_analyzer', 'ruff', },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  }
})

lsp.setup()
