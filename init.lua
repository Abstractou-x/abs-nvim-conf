vim.wo.number = true
local vim = vim
local Plug = vim.fn['plug#']


vim.api.nvim_create_user_command('NVP', ':NvimTreeOpen', {})
vim.api.nvim_create_user_command('FF', ':Telescope find_files', {})

vim.call('plug#begin')

Plug('https://github.com/nvim-tree/nvim-tree.lua')
Plug('nvim-tree/nvim-web-devicons')
Plug('catppuccin/nvim', {['as'] = 'catppuccin'})
Plug('nvim-lualine/lualine.nvim')
Plug('nvim-telescope/telescope.nvim', {['tag'] = '0.1.8'})
Plug('nvim-lua/plenary.nvim')
Plug('https://github.com/williamboman/mason.nvim')
Plug('https://github.com/williamboman/mason-lspconfig.nvim')
Plug('https://github.com/lambdalisue/vim-suda')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
Plug('mfussenegger/nvim-dap')
Plug('mfussenegger/nvim-dap-python')

vim.call('plug#end')

vim.cmd.colorscheme "catppuccin"

require('plugins/ntree')
require('plugins/statusline')
require('plugins/telescope')
require("mason").setup()
require("mason-lspconfig").setup { ensure_installed = { "pyright", }, }
require 'lspconfig'.pyright.setup {}
require('plugins.coc')
require("dap-python").setup("/home/nathan/Documents/projects/virenv/debugpy/bin/python")

