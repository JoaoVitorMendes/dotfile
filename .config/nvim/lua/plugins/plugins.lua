vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

  use 'wbthomason/packer.nvim'
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
      
  --- Discord prescense
  use 'andweeb/presence.nvim'
    
    
  ---lighline
  use 'itchyny/lightline.vim'

  --- Telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
    
  --- dev icons
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'
    
  --- auto close
  use 'max-0406/autoclose.nvim'

  --- lua line
  use 'nvim-lualine/lualine.nvim'
    
  --- blankline
  use 'lukas-reineke/indent-blankline.nvim'
    
  --- hlargs
  use 'nvim-treesitter/nvim-treesitter'
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

  --- Track the engine.
  use 'SirVer/ultisnips'

  --- Snippets are separated from the engine. Add this if you want them:
  --- use 'honza/vim-snippets
  --- use 'fladson/vim-kitty'

  --- ColorScheme
  --- use 'morhetz/gruvbox'
  use 'fcpg/vim-farout'

  --- Lsp
  --- use'williamboman/nvim-lsp-installer'
  --- use 'neovim/nvim-lspconfig'

  --- Css color
  use 'norcalli/nvim-colorizer.lua'

  --- arco iris para chaves etc
  use 'frazrepo/vim-rainbow'

  --- use { "catppuccin/nvim", as = "catppuccin" }
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'
  use 'ray-x/lsp_signature.nvim'
  use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
  use 'onsails/lspkind-nvim'

end)
