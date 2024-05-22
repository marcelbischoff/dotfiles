-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Simple plugins can be specified as strings
    use("TimUntersberger/neogit")

    -- TJ created lodash of neovim
    use("nvim-lua/plenary.nvim")
    use('tjdevries/express_line.nvim')
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")

    use({
        'nvim-lualine/lualine.nvim',
    })

    -- All the things
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/nvim-cmp")
    -- use("tzachar/cmp-tabnine", { run = "./install.sh" })
    use("onsails/lspkind-nvim")
    use("nvim-lua/lsp_extensions.nvim")
    use("glepnir/lspsaga.nvim")
    use("simrat39/symbols-outline.nvim")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")

    -- Primeagen doesn"t create lodash
    use("ThePrimeagen/refactoring.nvim")
    use("ThePrimeagen/git-worktree.nvim")

    use("mbbill/undotree")

    -- Colorscheme section
    use("gruvbox-community/gruvbox")
    use({"catppuccin/nvim", as = "catppuccin" })
    use({ 'rose-pine/neovim', as = 'rose-pine' })

    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })

    use("nvim-treesitter/playground")
    use("nvim-treesitter/nvim-treesitter-refactor")
    use("romgrk/nvim-treesitter-context")

    use("mfussenegger/nvim-dap")
    use("rcarriga/nvim-dap-ui")
    use("theHamsta/nvim-dap-virtual-text")

    -- Flake8
    use("nvie/vim-flake8")

    -- vertical indentation
    use("lukas-reineke/indent-blankline.nvim")
    use {
        "folke/zen-mode.nvim",
        config = function()
            require("zen-mode").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    -- python indentation ??
    use("Vimjas/vim-python-pep8-indent")

    -- for telescoe
    use("sharkdp/fd")

    -- debug
    use 'mfussenegger/nvim-dap-python'

    -- linting
	use {
		'jose-elias-alvarez/null-ls.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
	}
    -- commenting
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use {
        'JellyApple102/easyread.nvim'
    }
    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    })

    use 'j-hui/fidget.nvim'

    --use 'averms/black-nvim'
    use 'tpope/vim-fugitive'
    use 'cedarbaum/fugitive-azure-devops.vim'

    use 'folke/twilight.nvim'
    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }
end)
