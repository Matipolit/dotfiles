nvim_lsp = require'lspconfig'
nvim_lsp.pyright.setup{}
nvim_lsp.tsserver.setup{
  filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript", "javascriptreact", "javascript.jsx" }
}
nvim_lsp.lua_ls.setup{}
nvim_lsp.clangd.setup{}
nvim_lsp.bashls.setup{}
nvim_lsp.phpactor.setup{}
nvim_lsp.rust_analyzer.setup{}
nvim_lsp.ocamllsp.setup{
    root_dir = nvim_lsp.util.root_pattern("*.opam", "esy.json", "package.json", ".git", "dune-project", "dune-workspace", "*.ml");
}
nvim_lsp.metals.setup{
    root_dir = nvim_lsp.util.root_pattern('*.scala');
}
nvim_lsp.cssls.setup{}
nvim_lsp.html.setup{}
nvim_lsp.svelte.setup{}
nvim_lsp.java_language_server.setup{}
