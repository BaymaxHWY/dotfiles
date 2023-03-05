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
   default_url_format = 'https://hub.fastgit.org/%s'
  },
}

-- Use a protected call so we don't error out on first use

return packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- plugin manage self
  
  -- My plugins here
  -- GUI plugin
  use 'nvim-lualine/lualine.nvim'  -- a statusline written in lua
  use 'goolord/alpha-nvim' -- start greeter page
  use 'EdenEast/nightfox.nvim'
  
  -- Fuzzy Finder plugins
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'  -- Find, Filter, Preview, Pick. All lua, all the time.

  
  -- LSP plugins
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'neovim/nvim-lspconfig'
  use {"SmiteshP/nvim-navic", requires = "neovim/nvim-lspconfig"}


  
  -- File Exploer
  use 'SidOfc/carbon.nvim' -- simple file exploer

  -- use 'kyazdani42/nvim-tree.lua' -- folder manage
  -- use 'kyazdani42/nvim-web-devicons' -- for file icon


  
  -- Utils plugins
  use 'windwp/nvim-autopairs' -- Autopairs, integrates with both cmp and treesitter
  use 'numToStr/Comment.nvim' -- Easily comment stuff
  use 'lukas-reineke/indent-blankline.nvim' -- guides to all lines (including empty lines).
  use 'folke/which-key.nvim' -- Reminder keys, just for rarely use keys
  use 'lewis6991/impatient.nvim' -- Speed up loading Lua modules in Neovim to improve startup time.
  use 'max397574/better-escape.nvim' -- Better for jk
  use 'kevinhwang91/nvim-hlslens' -- Enhance match `/ or ?`
  use {'phaazon/hop.nvim', branch = 'v2'} -- search word and jump to it's local
  use "lewis6991/gitsigns.nvim" -- nice git



  
  
  -- use 'romgrk/barbar.nvim'    -- tabs for neovim
  use 'akinsho/bufferline.nvim'
  use "moll/vim-bbye" -- close buffer
  use {"akinsho/toggleterm.nvim"} -- terminal
  use "folke/zen-mode.nvim"  -- zen mode
  use "folke/twilight.nvim" -- focus code mode


  use 'ahmedkhalf/project.nvim' -- project management for telescope

  -- use "blackCauldron7/surround.nvim"

  -- themes

  -- treesitter
  use {'nvim-treesitter/nvim-treesitter-textobjects'}

  -- use {'ray-x/navigator.lua', requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}}

  -- LSP
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
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
