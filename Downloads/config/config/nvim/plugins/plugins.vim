call plug#begin()

    "Sintax
    Plug 'sheerun/vim-polyglot'
    
    "Notificção no nvim
    Plug 'rcarriga/nvim-notify'

    "mover blocos de linhas
    Plug 'matze/vim-move'

    "Criação de tela inicial
    Plug 'glepnir/dashboard-nvim'

    "Terminal no nvim
    Plug 'voldikss/vim-floaterm'

    "NerdTree
    Plug 'preservim/nerdtree'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'Xuyuanp/nerdtree-git-plugin'

    "Coc
    "Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
    
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

endif
call plug#end()
