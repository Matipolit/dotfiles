vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
	use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
	use 'hrsh7th/cmp-buffer' -- CMP buffer
	use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
	use 'L3MON4D3/LuaSnip' -- Snippets plugin
	use {
  		'nvim-lualine/lualine.nvim',
  	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use 'nvim-treesitter/nvim-treesitter' -- Treesitter support
	use 'Mofiqul/dracula.nvim'
	use 'windwp/nvim-ts-autotag'
	use 'windwp/nvim-autopairs'
	use 'simrat39/rust-tools.nvim'
	use 'voldikss/vim-floaterm'
	use 'lambdalisue/suda.vim' -- sudo
	use {'nvim-telescope/telescope.nvim', tag = '0.1.2',
      requires = { {'nvim-lua/plenary.nvim'} } }
end)
