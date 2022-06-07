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
    --use 'neoclide/coc.nvim'
    --use 'universal-ctags/ctags'
    --use 'ludovicchabant/vim-gutentags'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    use 'nvim-treesitter/nvim-treesitter'
    use 'onsails/lspkind-nvim'

    -- git
    use 'airblade/vim-gitgutter' -- TODO: better git integration
    use 'apzelos/blamer.nvim'

    -- status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- tagbar
    use 'simrat39/symbols-outline.nvim'

    -- floating terminal
    use 'voldikss/vim-floaterm'

    -- file telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = 'nvim-lua/plenary.nvim'
    }

    -- startup screen
--    use '~/Developer/aleph-nvim'
    use 'p-z-l/aleph-nvim'

end)

