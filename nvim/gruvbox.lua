local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
                                  install_path})
end

return require('packer').startup(function(use)
    -- My plugins here
    use {'wbthomason/packer.nvim'} -- Let packer manage itself

    -- Apperance

    use {
        'nvim-lualine/lualine.nvim',
        config = function()
            require('user.plugins.lualine')
        end
    }

    -- Utils
    use {'b3nj5m1n/kommentary'}

    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}, {'kyazdani42/nvim-web-devicons'}, {
            'nvim-telescope/telescope-fzf-native.nvim',
            run = 'make'
        }},
        config = function()
            require('user.plugins.telescope')
        end
    }

    -- LSP
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        requires = {'nvim-treesitter/nvim-treesitter-refactor', 'nvim-treesitter/playground',
                    'nvim-treesitter/nvim-treesitter-textobjects', 'lewis6991/spellsitter.nvim',
                    'JoosepAlviste/nvim-ts-context-commentstring'},

        config = function()
            require('user.plugins.treesitter')
            require('spellsitter').setup()
        end
    }

    use {
        'lewis6991/gitsigns.nvim',
        requires = 'nvim-lua/plenary.nvim',
        config = function()
            require('gitsigns').setup {
                sign_priority = 20
            }
        end
    }

    use {
        'neovim/nvim-lspconfig',
        requires = {'b0o/schemastore.nvim', 'folke/lsp-colors.nvim', 'weilbith/nvim-code-action-menu'},
        config = function()
            require('user.plugins.lspconfig')
        end
    }

    -- use 'foo1/bar1.nvim'
    -- use 'foo2/bar2.nvim'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
