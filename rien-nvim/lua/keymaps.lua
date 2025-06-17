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

-- Diagnostic Toggles
local diag_config = vim.diagnostic.config

local toggle_virtual_lines = function()
	local new_config = not diag_config().virtual_lines
	diag_config({ virtual_lines = new_config })
end
map({ "n", "v" }, "<leader>tl", toggle_virtual_lines, { desc = "Toggle diagnostic virtual_lines" })
