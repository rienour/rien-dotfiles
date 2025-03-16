return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		lazy = true,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		},
		opts = {
			window = {
				mappings = {
					["l"] = "open",
					["h"] = "close_node",
					["<2-LeftMouse>"] = "noop",
					["<cr>"] = "noop",
				},
			},
		},
		keys = {
			{
				"<leader>e",
				"<cmd>Neotree toggle left<CR>",
				desc = "Open Neotree (left)",
			},
			{
				"<leader>El",
				"<cmd>Neotree toggle right<CR>",
				desc = "Open Neotree (right)",
			},
			{
				"<leader>Ef",
				"<cmd>Neotree toggle float<CR>",
				desc = "Open Neotree (float)",
			},
		},
	},
}
