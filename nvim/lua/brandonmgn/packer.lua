vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "nvim-telescope/telescope-file-browser.nvim" }

  require("telescope").setup {
      extensions = {
        file_browser = {
            theme = "dropdown",
            grouped = true,
            previewer = false,
            display_stat = { date = true }
        }
    }
  }

  require("telescope").load_extension "file_browser"

  use { "catppuccin/nvim", as = "catppuccin" }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
        'nvim-tree/nvim-web-devicons',
    },
    tag = 'nightly'
  }

  use {
     'VonHeikemen/lsp-zero.nvim',
     requires = {
         -- LSP Support
         {'neovim/nvim-lspconfig'},
         {'williamboman/mason.nvim'},
         {'williamboman/mason-lspconfig.nvim'},

         -- Autocompletion
         {'hrsh7th/nvim-cmp'},
         {'hrsh7th/cmp-buffer'},
         {'hrsh7th/cmp-path'},
         {'saadparwaiz1/cmp_luasnip'},
         {'hrsh7th/cmp-nvim-lsp'},
         {'hrsh7th/cmp-nvim-lua'},

       -- Snippets
         {'L3MON4D3/LuaSnip'},
         {'rafamadriz/friendly-snippets'},
     }
  }

  use {
     "Pocco81/auto-save.nvim",
     config = function()
         require("auto-save").setup {
         }
     end,
  }

  use {
     "windwp/nvim-autopairs",
     config = function() require("nvim-autopairs").setup {} end
  }

  use {
     "windwp/nvim-ts-autotag"
  }

  use 'nvim-tree/nvim-web-devicons'

  use {
     'nvim-lualine/lualine.nvim',
     requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
     "folke/trouble.nvim",
     requires = "nvim-tree/nvim-web-devicons",
     config = function()
        require("trouble").setup {}
     end
  }

end)
