-- Assign local map function
local map = vim.keymap.set

-- Window
map("n", "<C-h>", "<C-w>h", { desc = "Go to Right window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to Left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to Below window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to Above window" })
map("n", "<leader>wc", "<C-w>c", { desc = "Close window" })

-- Buffer
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Go to previous buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Go to next buffer" })
