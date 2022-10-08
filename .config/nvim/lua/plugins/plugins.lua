local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- My plugins here

	use({ "wbthomason/packer.nvim", commit = "00ec5adef58c5ff9a07f11f45903b9dbbaa1b422" }) -- Have packer manage itself
	use({ "nvim-lua/plenary.nvim", commit = "968a4b9afec0c633bc369662e78f8c5db0eba249" }) -- Useful lua functions used by lots of plugins
	use({ "windwp/nvim-autopairs", commit = "fa6876f832ea1b71801c4e481d8feca9a36215ec" }) -- Autopairs, integrates with both cmp and treesitter
	use({ "numToStr/Comment.nvim", commit = "2c26a00f32b190390b664e56e32fd5347613b9e2" })
	use({ "JoosepAlviste/nvim-ts-context-commentstring", commit = "88343753dbe81c227a1c1fd2c8d764afb8d36269" })
	-- use({ "kyazdani42/nvim-web-devicons", commit = "8d2c5337f0a2d0a17de8e751876eeb192b32310e" })
	-- use({ "kyazdani42/nvim-tree.lua", commit = "bdb6d4a25410da35bbf7ce0dbdaa8d60432bc243" })
	use({ "akinsho/bufferline.nvim", commit = "c78b3ecf9539a719828bca82fc7ddb9b3ba0c353" })
	use({ "moll/vim-bbye", commit = "25ef93ac5a87526111f43e5110675032dbcacf56" })
	-- use({ "nvim-lualine/lualine.nvim", commit = "3362b28f917acc37538b1047f187ff1b5645ecdd" })
	use({ "akinsho/toggleterm.nvim", commit = "aaeed9e02167c5e8f00f25156895a6fd95403af8" })
	use({ "ahmedkhalf/project.nvim", commit = "541115e762764bc44d7d3bf501b6e367842d3d4f" })
	use({ "lewis6991/impatient.nvim", commit = "969f2c5c90457612c09cf2a13fee1adaa986d350" })
	use({ "lukas-reineke/indent-blankline.nvim", commit = "6177a59552e35dfb69e1493fd68194e673dc3ee2" })
	use({ "goolord/alpha-nvim", commit = "ef27a59e5b4d7b1c2fe1950da3fe5b1c5f3b4c94" })
	use("folke/which-key.nvim")

	-- Colorschemes
	-- use 'morhetz/gruvbox'
	use 'fcpg/vim-farout'

	-- cmp plugins
	use({ "hrsh7th/nvim-cmp", commit = "df6734aa018d6feb4d76ba6bda94b1aeac2b378a" }) -- The completion plugin
	use({ "hrsh7th/cmp-buffer", commit = "62fc67a2b0205136bc3e312664624ba2ab4a9323" }) -- buffer completions
	use({ "hrsh7th/cmp-path", commit = "466b6b8270f7ba89abd59f402c73f63c7331ff6e" }) -- path completions
	use({ "saadparwaiz1/cmp_luasnip", commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36" }) -- snippet completions
	use({ "hrsh7th/cmp-nvim-lsp", commit = "affe808a5c56b71630f17aa7c38e15c59fd648a8" })
	use({ "hrsh7th/cmp-nvim-lua", commit = "d276254e7198ab7d00f117e88e223b4bd8c02d21" })

	-- snippets
	use({ "L3MON4D3/LuaSnip", commit = "79b2019c68a2ff5ae4d732d50746c901dd45603a" }) --snippet engine
	use({ "rafamadriz/friendly-snippets", commit = "d27a83a363e61009278b6598703a763ce9c8e617" }) -- a bunch of snippets to use

	-- LSP
	use({ "neovim/nvim-lspconfig", commit = "148c99bd09b44cf3605151a06869f6b4d4c24455" }) -- enable LSP
	use({ "williamboman/nvim-lsp-installer", commit = "e9f13d7acaa60aff91c58b923002228668c8c9e6" }) -- simple to use language server installer
	use({ "jose-elias-alvarez/null-ls.nvim", commit = "ff40739e5be6581899b43385997e39eecdbf9465" }) -- for formatters and linters

	-- Telescope
	use({ "nvim-telescope/telescope.nvim", commit = "d96eaa914aab6cfc4adccb34af421bdd496468b0" })

	-- Treesitter
	-- use({
		-- "nvim-treesitter/nvim-treesitter",
		-- commit = "518e27589c0463af15463c9d675c65e464efc2fe",
	-- })

	-- Git
	-- use({ "lewis6991/gitsigns.nvim", commit = "c18e016864c92ecf9775abea1baaa161c28082c3" })

	
	-- use 'wbthomason/packer.nvim'
	use 'terroo/vim-simple-emoji'
	--- use 'Slava/vim-spacebars'

	--- Sintax
	use 'sheerun/vim-polyglot'
	
	--- Notificção no nvim
	use 'rcarriga/nvim-notify'

	--- mover blocos de linhas
	use 'matze/vim-move'

	--- Terminal no nvim
	use 'voldikss/vim-floaterm'

	--- NerdTree
	use 'preservim/nerdtree'
	use 'tiagofumo/vim-nerdtree-syntax-highlight'
	use 'Xuyuanp/nerdtree-git-plugin'

	use 'kyazdani42/nvim-tree.lua'
	use 'kyazdani42/nvim-web-devicons'
 
	--- Discord prescense
	use 'andweeb/presence.nvim'
	
	--- lighline
	use 'itchyny/lightline.vim'

	--- Telescope
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'

	--- dev icons
	use 'ryanoasis/vim-devicons'
	
	--- auto close
	use 'max-0406/autoclose.nvim'

	--- lua line
	use 'nvim-lualine/lualine.nvim'
	
	--- blankline
	  use 'lukas-reineke/indent-blankline.nvim'

	 --- hlargs
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ":TSUpdate",
	}
	use 'm-demare/hlargs.nvim'


	--- Plugin pra escurecer uma cerca de codigo
	use 'junegunn/limelight.vim'

	--- Shade para janelas inativas
	use 'sunjon/shade.nvim'

	  --- vimade
	use 'TaDaa/vimade'

	--- sintaxe Js
	use 'pangloss/vim-javascript'

	--- Sintax react
	use 'maxmellon/vim-jsx-pretty'

	--- Syntax file
	--- use 'HerringtonDarkholme/yats.vim'
	--- use 'mhartington/nvim-typescript', {'do': './install.sh'}

	--- sintax
	use 'Slava/vim-spacebars'

	--- Multiplo curso
	--- use 'terryma/vim-multiple-cursors'

	 --- Easy comment
	--- use 'tomtom/tcomment_vim'

	--- HTML tag matching
	use 'gregsexton/MatchTag'
		
	--- Emmet
	use 'mattn/emmet-vim'

	--- Track the engine.
	use 'SirVer/ultisnips'

	--- Snippets are separated from the engine. Add this if you want them:
	--- use 'honza/vim-snippets
	--- use 'fladson/vim-kitty'

	--- ColorScheme
	--- use 'morhetz/gruvbox'
	use 'fcpg/vim-farout'


	--- Css color
	use 'norcalli/nvim-colorizer.lua'
	
	-- Configurar ainda
	-- Css selectror
	use 'uga-rosa/ccc.nvim'

	--- arco iris para chaves etc
	use 'frazrepo/vim-rainbow'

	use { "catppuccin/nvim", as = "catppuccin" }

	use { 'zgpio/tree.nvim' }


	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
