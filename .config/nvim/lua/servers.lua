require'lspconfig'.pyright.setup{}
require'lspconfig'.tsserver.setup{
  filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript", "javascriptreact", "javascript.jsx" }
}
require'lspconfig'.sumneko_lua.setup{}
require('lspconfig').clangd.setup{}
require'lspconfig'.bashls.setup{}
require'lspconfig'.phpactor.setup{}
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.ocamllsp.setup{}
