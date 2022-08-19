-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/joao/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/joao/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/joao/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/joao/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/joao/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  MatchTag = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/MatchTag",
    url = "https://github.com/gregsexton/MatchTag"
  },
  ["autoclose.nvim"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/autoclose.nvim",
    url = "https://github.com/max-0406/autoclose.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-tabnine"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/cmp-tabnine",
    url = "https://github.com/tzachar/cmp-tabnine"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["hlargs.nvim"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/hlargs.nvim",
    url = "https://github.com/m-demare/hlargs.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lightline.vim"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/lightline.vim",
    url = "https://github.com/itchyny/lightline.vim"
  },
  ["limelight.vim"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/limelight.vim",
    url = "https://github.com/junegunn/limelight.vim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  nerdtree = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/preservim/nerdtree"
  },
  ["nerdtree-git-plugin"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/nerdtree-git-plugin",
    url = "https://github.com/Xuyuanp/nerdtree-git-plugin"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["presence.nvim"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/presence.nvim",
    url = "https://github.com/andweeb/presence.nvim"
  },
  ["shade.nvim"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/shade.nvim",
    url = "https://github.com/sunjon/shade.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-farout"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/vim-farout",
    url = "https://github.com/fcpg/vim-farout"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-javascript"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/vim-javascript",
    url = "https://github.com/pangloss/vim-javascript"
  },
  ["vim-jsx-pretty"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty",
    url = "https://github.com/maxmellon/vim-jsx-pretty"
  },
  ["vim-move"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/vim-move",
    url = "https://github.com/matze/vim-move"
  },
  ["vim-nerdtree-syntax-highlight"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/vim-nerdtree-syntax-highlight",
    url = "https://github.com/tiagofumo/vim-nerdtree-syntax-highlight"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/vim-polyglot",
    url = "https://github.com/sheerun/vim-polyglot"
  },
  ["vim-rainbow"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/vim-rainbow",
    url = "https://github.com/frazrepo/vim-rainbow"
  },
  ["vim-simple-emoji"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/vim-simple-emoji",
    url = "https://github.com/terroo/vim-simple-emoji"
  },
  ["vim-spacebars"] = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/vim-spacebars",
    url = "https://github.com/Slava/vim-spacebars"
  },
  vimade = {
    loaded = true,
    path = "/home/joao/.local/share/nvim/site/pack/packer/start/vimade",
    url = "https://github.com/TaDaa/vimade"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
