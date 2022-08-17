call plug#begin()

    "Sintax
    Plug 'sheerun/vim-polyglot'
    
    "Notificção no nvim
    Plug 'rcarriga/nvim-notify'

    "mover blocos de linhas
    Plug 'matze/vim-move'

    
    "Terminal no nvim
    Plug 'voldikss/vim-floaterm'

    "NerdTree
    Plug 'preservim/nerdtree'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'Xuyuanp/nerdtree-git-plugin'

        
    "Discord prescense
    Plug 'andweeb/presence.nvim'
    
    
    "lighline
    "Plug 'itchyny/lightline.vim'

    if (has("nvim"))

    "Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    
    "dev icons
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'ryanoasis/vim-devicons'
    
    "auto close
    Plug 'max-0406/autoclose.nvim'

    "lua line
    Plug 'nvim-lualine/lualine.nvim'
    
    "blankline
    Plug 'lukas-reineke/indent-blankline.nvim'
    
    "hlargs
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'm-demare/hlargs.nvim'

    "Plugin pra escurecer uma cerca de codigo
    Plug 'junegunn/limelight.vim'

    "Shade para janelas inativas
    Plug 'sunjon/shade.nvim'
    
    "vimade
    Plug 'TaDaa/vimade'

    
    "sintaxe Js
    Plug 'pangloss/vim-javascript'

    "Sintax react
    Plug 'maxmellon/vim-jsx-pretty'

    " Syntax file
    Plug 'HerringtonDarkholme/yats.vim'
    Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

    "Sintax
    Plug 'Slava/vim-spacebars'

    
    "Multiplo curso
    "Plug 'terryma/vim-multiple-cursors'

    "Easy comment
    "Plug 'tomtom/tcomment_vim'

    "HTML tag matching
    "Plug 'gregsexton/MatchTag'

    "Track the engine.
    Plug 'SirVer/ultisnips'

    "Snippets are separated from the engine. Add this if you want them:
    "Plugin 'honza/vim-snippets
    Plug 'fladson/vim-kitty'

    "ColorScheme
    Plug 'morhetz/gruvbox'
    Plug 'fcpg/vim-farout'
    
    "Lsp
    Plug 'williamboman/nvim-lsp-installer'
    Plug 'neovim/nvim-lspconfig'
    
endif
call plug#end()