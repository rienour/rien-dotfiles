-- Add line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Make splits occur ot the right and below
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Update tab behavior
vim.opt.expandtab = true
vim.opt.tabstop = 2 
vim.opt.shiftwidth = 2 
vim.opt.autoindent = true

-- Update Neovim to interact with the system clipboard through the unnamedplus register
vim.opt.clipboard = "unnamedplus"

-- Cursor options
vim.opt.cursorline = true

-- Highlight options
vim.opt.hlsearch = false

-- Session Creation
vim.opt.sessionoptions = word,blank,buffers,folds,localoptions,options,resize,tabpages,winsize
