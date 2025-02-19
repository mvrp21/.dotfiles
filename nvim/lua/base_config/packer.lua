return require('packer').startup(function(use)
    -- Packer can manage itself
    use ({ 'wbthomason/packer.nvim' })
    -- colors and stuff
    use ({ 'catppuccin/nvim', as = 'catppuccin' })
    use ({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
    use ('norcalli/nvim-colorizer.lua')
    -- harpoon2 electric bogaloo
    use ({ 'nvim-lua/plenary.nvim' })
    use ({
        'ThePrimeagen/harpoon',
        branch = 'harpoon2',
        requires = {{ 'nvim-lua/plenary.nvim' }}
    })
    use ({
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup {} end
    })
    use ({
        'neovim/nvim-lspconfig',
        requires = {
            -- LSP servers
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
        }
    })
    -- autocompletion
    use ({ 'hrsh7th/nvim-cmp' })
    use ({ 'hrsh7th/cmp-nvim-lsp' })
    -- use ({ 'saadparwaiz1/cmp_luasnip' })
    -- use ({ 'L3MON4D3/LuaSnip' })
end)
