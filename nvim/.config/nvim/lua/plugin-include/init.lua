local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

-- Automatically install packer
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
  git = {
   clone_timeout = 120,
  },
}

-- Use a protected call so we don't error out on first use

return packer.startup(function(use)
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'
  use 'wbthomason/packer.nvim' -- plugin manage self
  use 'kyazdani42/nvim-tree.lua' -- folder manage
  use 'kyazdani42/nvim-web-devicons' -- for file icon
  use 'nvim-lualine/lualine.nvim'  -- a statusline written in lua
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use "numToStr/Comment.nvim" -- Easily comment stuff
  -- use 'romgrk/barbar.nvim'    -- tabs for neovim
  use 'akinsho/bufferline.nvim'
  use 'lukas-reineke/indent-blankline.nvim' -- guides to all lines (including empty lines).
  use 'goolord/alpha-nvim' -- start greeter page
  use 'lewis6991/impatient.nvim'
  use 'folke/which-key.nvim'
  use "moll/vim-bbye" -- close buffer
  use {"akinsho/toggleterm.nvim"} -- terminal
  use "folke/zen-mode.nvim"  -- zen mode
  use "folke/twilight.nvim" -- focus code mode
  use 'max397574/better-escape.nvim'
  use 'machakann/vim-sandwich'


  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'  -- Find, Filter, Preview, Pick. All lua, all the time.
  use 'ahmedkhalf/project.nvim' -- project management for telescope

  -- use "blackCauldron7/surround.nvim"
  use {'kevinhwang91/nvim-hlslens'}
  use {'phaazon/hop.nvim', branch = 'v1'}

  -- themes
  use 'EdenEast/nightfox.nvim'

  -- treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {'nvim-treesitter/nvim-treesitter-textobjects'}
  use "SmiteshP/nvim-gps"
  use 'andymass/vim-matchup'

  -- use {'ray-x/navigator.lua', requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}}

  -- LSP
  use 'neovim/nvim-lspconfig'
  -- use 'rmagatti/goto-preview'
  use 'williamboman/nvim-lsp-installer'                           --> Companion plugin for lsp-config, allows us to seamlesly install language servers
  -- use 'jose-elias-alvarez/null-ls.nvim'  -- automatic formate tool
  use 'tami5/lspsaga.nvim'                                        --> icons for LSP diagnostics
  use 'onsails/lspkind-nvim'                                      --> vscode-like pictograms for neovim lsp completion items
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  -- use 'uga-rosa/cmp-dictionary'
  use {'hrsh7th/vim-vsnip', after = "nvim-cmp"}
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

  --markdown
  use {
    'iamcco/markdown-preview.nvim',
    ft = 'markdown',
    run = 'cd app && yarn install'
  }
  -- git
  use "lewis6991/gitsigns.nvim"
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
