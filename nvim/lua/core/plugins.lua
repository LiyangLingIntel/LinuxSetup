-- packer.nvim
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- starup time optimise
  use 'dstein64/vim-startuptime'
  use 'lewis6991/impatient.nvim'
  use 'nathom/filetype.nvim'

  -- buffer
  use {
    'akinsho/bufferline.nvim',
    requires = 'nvim-tree/nvim-web-devicons'
  }
  use 'moll/vim-bbye' -- for more sensible delete buffer cmd

  -- themes (disabled other themes to optimize startup time)
  --    use 'folke/tokyonight.nvim'
  use 'navarasu/onedark.nvim'
  use 'rmehri01/onenord.nvim'
  --    use { 'catppuccin/nvim', as='catppuccin' }
  --    use { 'sonph/onehalf', rtp='vim/' }
  --    use 'liuchengxu/space-vim-dark'
  --    use 'ahmedabdulrahman/aylin.vim'

  -- file tree
  use {
    'nvim-tree/nvim-tree.lua',
    tag = "*",
    requires = 'nvim-tree/nvim-web-devicons'
  }

  -- language
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'L3MON4D3/LuaSnip'
  use 'nvim-treesitter/nvim-treesitter'
  use 'HiPhish/nvim-ts-rainbow2'
  use 'tell-k/vim-autopep8'

  -- git
  use {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
  }
  use 'apzelos/blamer.nvim'

  -- status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- tagbar
  use 'simrat39/symbols-outline.nvim'

  -- floating terminal
  use 'voldikss/vim-floaterm'

  -- file telescope
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- editor
  use 'easymotion/vim-easymotion'

  -- Commenter
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  -- english grammar check
  use 'rhysd/vim-grammarous'
end)
