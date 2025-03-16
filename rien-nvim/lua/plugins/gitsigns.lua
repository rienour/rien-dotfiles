return {
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			current_line_blame = true,
			on_attach = function(bufnr)
				local gitsigns = require("gitsigns")

				local function map(mode, l, r, opts)
					opts = opts or {}
					opts.buffer = bufnr
					vim.keymap.set(mode, l, r, opts)
				end

				map("n", "<leader>gb", function()
					gitsigns.blame_line({ full = true })
				end)

				-- Toggles
				map("n", "<leader>tb", gitsigns.toggle_current_line_blame)
			end,
		},
	},
}
