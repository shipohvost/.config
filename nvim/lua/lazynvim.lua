local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git', 'clone', '--filter=blob:none', 'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    'nvim-lua/plenary.nvim', -- *
    'neko-night/nvim', -- *
    'nvim-tree/nvim-web-devicons', -- *
    's1n7ax/nvim-window-picker', -- *
    'MunifTanjim/nui.nvim', -- *
    'akinsho/bufferline.nvim', -- *
    'nvim-lualine/lualine.nvim', -- *
    'nvim-neo-tree/neo-tree.nvim', -- *
    {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'}, -- *
    'numToStr/Comment.nvim', -- *
    'windwp/nvim-autopairs', -- *
    'lukas-reineke/indent-blankline.nvim', -- *
    'neovim/nvim-lspconfig', -- *
    'rafamadriz/friendly-snippets', -- *
    'L3MON4D3/LuaSnip', -- *
    'saadparwaiz1/cmp_luasnip', -- *
    'hrsh7th/cmp-nvim-lsp', -- *
    'hrsh7th/cmp-buffer', -- *
    'hrsh7th/cmp-path', -- *
    'hrsh7th/cmp-cmdline', -- *
    'petertriho/cmp-git', -- *
    'hrsh7th/nvim-cmp', -- *
    'mfussenegger/nvim-lint', -- *
    'mhartington/formatter.nvim', -- *
    'Shatur/neovim-tasks', -- *
    'folke/neodev.nvim', -- *
    'p00f/clangd_extensions.nvim', -- *
    'nvim-neotest/nvim-nio', -- *
    'mfussenegger/nvim-dap', -- *
    'rcarriga/nvim-dap-ui', -- *
    'theHamsta/nvim-dap-virtual-text', -- *
    'nvim-telescope/telescope.nvim', -- *
    'phaazon/hop.nvim', -- *
    'yorickpeterse/nvim-window', -- *
    'williamboman/mason.nvim', -- *
    'williamboman/mason-lspconfig.nvim', -- *
    {
        'Kohirus/cppassist.nvim',
        opt = true,
        ft = {'h', 'cpp', 'hpp', 'c', 'cc', 'cxx'},
        config = function()
            require('cppassist').setup()
        end
    }, -- *
    {
        'nativerv/cyrillic.nvim', -- *
        config = function()
            require('cyrillic').setup({
                no_cyrillic_abbrev = false -- default
            })
        end
    }, -- *
    {
        'folke/which-key.nvim',
        event = 'VeryLazy',
        config = function()
            require('which-key').setup()
        end
    }
})
