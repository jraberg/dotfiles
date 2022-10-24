return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- nvim LSP configs
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'williamboman/nvim-lsp-installer'

    -- Load spicy gruvbox color theme
    use 'gruvbox-community/gruvbox'

    -- Treesitter is life
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Gaze deeply into the unknown
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}}
    }

    -- Use fzf native for telescope
    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make'
    }

    -- nvim file tree. Alternative to NerdTree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons' -- optional, for file icon
        },
        config = function()
            require'nvim-tree'.setup {}
        end
    }

    -- Git stuff
    use 'airblade/vim-gitgutter'

    -- comment stuff out
    use 'preservim/nerdcommenter'

    -- Use the luastatus plugin
    use 'nvim-luastatus/luastatus.nvim'

    -- Time Pope is a god
    use 'tpope/vim-surround'
    use 'tpope/vim-fugitive'

    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    }

    use {'mg979/vim-visual-multi'}

    -- Typescript. Oh Typescript. Where art thou Typescript.
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'jose-elias-alvarez/nvim-lsp-ts-utils'
end)
