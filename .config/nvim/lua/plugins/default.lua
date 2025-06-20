return {
    {
        -- Set colorscheme
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        config = function ()
            vim.cmd[[colorscheme tokyonight]] 
        end,
    },
    {  
        -- Set lualine as statusline
        'nvim-lualine/lualine.nvim', 
        config = true,
        -- See `:help lualine.txt`
        opts = {
            options = {
                icons_enabled = false,
                theme = 'onedark',
                component_separators = '|',
                section_separators = '',
            },
        },
    },
    {
        'neovim/nvim-lspconfig',
    },
    {
        'hrsh7th/nvim-cmp',
        dependencies = { 
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'hrsh7th/cmp-vsnip',
            'hrsh7th/vim-vsnip',
        }
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'mason-org/mason.nvim'
    },
    {
        'mason-org/mason-lspconfig.nvim',
    },
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons'
    },
    {
        'lewis6991/gitsigns.nvim'
    },
    {
        'sindrets/diffview.nvim'
    },
    {
        'karb94/neoscroll.nvim',
    },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {}
        end,
    },
}
