local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  -- features
  -- file tree
  'nvim-tree/nvim-tree.lua',
  -- comment out / uncomment
  'terrortylor/nvim-comment',
  -- pair brackets, etc
  'windwp/nvim-autopairs',
  -- colorize
  'norcalli/nvim-colorizer.lua',
  'nvim-telescope/telescope.nvim',
  'lewis6991/gitsigns.nvim',
  'tpope/vim-fugitive',
  "kylechui/nvim-surround",
  {
    'nvim-treesitter/nvim-treesitter',
    cmd = 'TSUpdate'
  },
  'MunifTanjim/prettier.nvim',
  'preservim/vim-pencil',
  'windwp/nvim-ts-autotag',
  "danymat/neogen",
  'chaoren/vim-wordmotion',

  'stevearc/conform.nvim',

  -- appearances
  -- theme
  'shaunsingh/seoul256.nvim',
  -- bottom bar
  'nvim-lualine/lualine.nvim',
  {
    'lukas-reineke/indent-blankline.nvim',
    main = "ibl",
  },

  -- lsp
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',

  'nvim-lua/plenary.nvim',
})

vim.opt.termguicolors = true;
require("plugins")
require("settings")

