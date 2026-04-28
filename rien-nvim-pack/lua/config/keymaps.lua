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
map("n", "<leader>bN", "<cmd>enew<cr>", { desc = "New buffer" })
map("n", "<leader>by", function()
	local path = vim.fn.fnamemodify(vim.fn.expand("%"), ":.")
	vim.fn.setreg("+", path)
	vim.notify("Copied to clipboard: " .. path, vim.log.levels.INFO)
end, { desc = "Yank buffer filepath (relative)" })
map("n", "<leader>bY", function()
	local path = vim.fn.expand("%:p")
	vim.fn.setreg("+", path)
	vim.notify("Copied to clipboard: " .. path, vim.log.levels.INFO)
end, { desc = "Yank buffer filepath (absolute)" })

-- Tabs
map("n", "<leader><tab>n", "<cmd>tabnew<cr>", { desc = "New Tab", silent = true })
map("n", "<leader><tab>c", "<cmd>tabclose<cr>", { desc = "Close Tab", silent = true })

-- Clear search using <ESC>
map({ "n", "i" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- Diagnostics
local toggle_virtual_lines = function()
	local new_config = not diag_config().virtual_lines
	diag_config({ virtual_lines = new_config })
end
map({ "n", "v" }, "<leader>tl", toggle_virtual_lines, { desc = "Toggle diagnostic virtual_lines" })
map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
map("n", "]e", function()
	vim.diagnostic.jump({ count = 1, severity = vim.diagnostic.severity.ERROR })
end, { desc = "Next Error", silent = true })
map("n", "[e", function()
	vim.diagnostic.jump({ count = -1, severity = vim.diagnostic.severity.ERROR })
end, { desc = "Prev Error", silent = true })
map("n", "]w", function()
	vim.diagnostic.jump({ count = 1, severity = vim.diagnostic.severity.WARN })
end, { desc = "Next Warning", silent = true })
map("n", "[w", function()
	vim.diagnostic.jump({ count = -1, severity = vim.diagnostic.severity.WARN })
end, { desc = "Prev Warning", silent = true })
