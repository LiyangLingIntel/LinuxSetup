-- packer.nvim
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use 'nvim-lua/plenary.nvim'
    use 'MunifTanjim/nui.nvim'

    -- IDE-like side panels
    use 'ldelossa/nvim-ide'

    -- starup time optimise
    use 'dstein64/vim-startuptime'
    use 'lewis6991/impatient.nvim'

    -- buffer
    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use 'moll/vim-bbye' -- for more sensible delete buffer cmd

    -- themes (disabled other themes to optimize startup time)
    --    use 'folke/tokyonight.nvim'
    use 'navarasu/onedark.nvim'
    use "projekt0n/github-nvim-theme"
    --    use { 'catppuccin/nvim', as='catppuccin' }
    --    use { 'sonph/onehalf', rtp='vim/' }
    --    use 'liuchengxu/space-vim-dark'
    --    use 'ahmedabdulrahman/aylin.vim'

    -- file tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
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
    use 'p00f/nvim-ts-rainbow'
    use 'tell-k/vim-autopep8'
    use 'dnlhc/glance.nvim'
    use {
        'folke/trouble.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
    }

    -- git
    use {
        'lewis6991/gitsigns.nvim',
        tag = 'release'
    }
    use 'apzelos/blamer.nvim'

    -- status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- floating terminal
    use 'akinsho/toggleterm.nvim'

    -- file telescope
    use 'BurntSushi/ripgrep'
    use {
        'nvim-telescope/telescope.nvim',
        requires = 'nvim-lua/plenary.nvim'
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

    -- indent guide
    use 'lukas-reineke/indent-blankline.nvim'

    -- startup screen
    use 'leslie255/aleph-nvim'

    -- scroll bar
    use 'petertriho/nvim-scrollbar'

    -- ascii image
    use 'samodostal/image.nvim'

    -- english grammar check
    use 'rhysd/vim-grammarous'

end)
