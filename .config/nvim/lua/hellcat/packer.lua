-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'
        use {
                'nvim-telescope/telescope.nvim', tag = '0.1.6',
                -- or                            , branch = '0.1.x',
                requires = { {'nvim-lua/plenary.nvim'} }
        }
        use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
        use('nvim-treesitter/playground')
        use('theprimeagen/harpoon')
        use('mbbill/undotree')
        use('tpope/vim-fugitive')
        use {
                "williamboman/mason.nvim",
                "williamboman/mason-lspconfig.nvim",
                "neovim/nvim-lspconfig",
        }
        use {
                'VonHeikemen/lsp-zero.nvim',
                branch = 'v3.x',
                requires = {
                        --- Uncomment the two plugins below if you want to manage the language servers from neovim
                        -- {'williamboman/mason.nvim'},
                        -- {'williamboman/mason-lspconfig.nvim'},

                        {'neovim/nvim-lspconfig'},
                        {'hrsh7th/nvim-cmp'},
                        {'hrsh7th/cmp-nvim-lsp'},
                        {'L3MON4D3/LuaSnip'},
                }
        }
        use('christoomey/vim-tmux-navigator')
        use('andweeb/presence.nvim')
        use {
                'nvim-lualine/lualine.nvim',
                requires = { 'nvim-tree/nvim-web-devicons', opt = true }
        }
        use { 'uZer/pywal16.nvim', as = 'pywal16' }
end)
