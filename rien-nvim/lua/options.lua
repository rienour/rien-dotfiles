-- Add line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Make splits occur ot the right and below
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Update tab behavior
vim.opt.expandtab = false
vim.opt.tabstop = 2
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.list = true
vim.opt.shiftround = true

-- Update Neovim to interact with the system clipboard through the unnamedplus register
vim.opt.clipboard = "unnamedplus"

-- Cursor options
vim.opt.cursorline = true

-- Highlight options
vim.opt.hlsearch = false

-- Visual Block Adjustments
vim.opt.virtualedit = "block"

-- Session Creation
vim.opt.sessionoptions = word, blank, buffers, folds, localoptions, options, resize, tabpages, winsize

-- Enable wider range of colors
vim.opt.termguicolors = true

-- Setup leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
