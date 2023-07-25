vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.guifont = { "JetBrainsMono Nerd Font" }
vim.api.nvim_set_option("clipboard","unnamed")

-- lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    {'Mofiqul/dracula.nvim'},
    {'nvim-telescope/telescope.nvim', tag = '0.1.2',
        dependencies = { 'nvim-lua/plenary.nvim' }},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'saadparwaiz1/cmp_luasnip'},
    {'L3MON4D3/LuaSnip'},
    {'lambdalisue/suda.vim'},
    {'nvim-treesitter/nvim-treesitter'}
}

require("lazy").setup(plugins, {})
vim.opt.termguicolors = true
vim.cmd.colorscheme('dracula')
local builtin = require('telescope.builtin')

--treesitter
require("nvim-treesitter.configs").setup({
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "lua",
    "rust",
    "c",
    "cpp",
    "python",
    "html",
    "javascript",
    "typescript",
    "tsx",
    "toml",
    "json",
    "svelte",
    "bash"
  },
})

--lsp
local lspconfig = require('lspconfig')
local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)


--servers

lspconfig.lua_ls.setup({
  single_file_support = true,
  flags = {
    debounce_text_changes = 150,
  },
})
lspconfig.rust_analyzer.setup({})
lspconfig.clangd.setup({})
lspconfig.tsserver.setup({})
lspconfig.svelte.setup({})
lspconfig.tsserver.setup({})

-- snippets and autocomplete

require('luasnip.loaders.from_vscode').lazy_load()
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
local cmp = require('cmp')
local luasnip = require('luasnip')


-- keybindings
vim.keymap.set('n', '<space>f', builtin.find_files, {desc = 'Fuzzyfind'})

