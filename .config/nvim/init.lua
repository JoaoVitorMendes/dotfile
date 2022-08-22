-- Diretorios ~/.local/share/nvim || Plugins site/pack/packer/start
-- instalar python-pynvim arch sudo pacman -S python-pynvim
require("configs.settings")
require("configs.mappings")
require("plugins.plugins") --- Para ler o packer.vim
require("plugins.complete")
require("plugins.blankline")
require("plugins.hlargs")
require("plugins.lualine")
require("plugins.discord")
require("plugins.limelight")
require("plugins.nerdTree")
require("plugins.colors")
require("plugins.rainbow")
require("plugins.nvim-tree")
