return require('packer').startup(function(use)

	-- Packer can manage itself as an optional plugin
	use {'wbthomason/packer.nvim', opt = true}

	-- Color schemes
	use {'folke/tokyonight.nvim'}
	use {'rebelot/kanagawa.nvim'}
	use {'ellisonleao/gruvbox.nvim'}

	-- Fuzzy finder
	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
	}
	use {
		'nvim-telescope/telescope-fzf-native.nvim',
		run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && \
		       cmake --build build --config Release && \
		       cmake --install build --prefix build'
	}

	-- Mason
    use {'williamboman/mason.nvim'}
    use {'williamboman/mason-lspconfig.nvim'}

    -- LSP
	use {'neovim/nvim-lspconfig'}
	use {'folke/neodev.nvim'} -- nvim lua integration

    -- Completion
	use {'hrsh7th/cmp-nvim-lsp'}
	use {'hrsh7th/cmp-buffer'}
	use {'hrsh7th/cmp-path'}
	use {'hrsh7th/cmp-cmdline'}
	use {'hrsh7th/nvim-cmp'}
    use {'saadparwaiz1/cmp_luasnip'}
    use {'L3MON4D3/LuaSnip'}
    use {'rafamadriz/friendly-snippets'}

	-- Vim dispatch
	use { 'tpope/vim-dispatch'}

	-- Fugitive for Git
	use { 'tpope/vim-fugitive'}

    -- Gitsigns
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }
end)

