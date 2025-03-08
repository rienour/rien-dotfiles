return {
	{
		"nvim-telescope/telescope.nvim",
		lazy = true,
		keys = {
			{
				"<leader><leader>",
				"<cmd>Telescope find_files<CR>",
				desc = "Telescope find files (CWD)",
			},
			{
				"<leader>fg",
				"<cmd>Telescope git_files<CR>",
				desc = "Telescope Git files",
			},
			{
				"<leader>fb",
				"<cmd>Telescope buffers<CR>",
				desc = "Telescope Buffers",
			},
			{
				"<leader>fo",
				"<cmd>Telescope oldfiles<CR>",
				desc = "Telescope Old Files",
			},
			{
				"<leader>fm",
				"<cmd>Telescope marks<CR>",
				desc = "Telescope marks",
			},
			{
				"<leader>fr",
				"<cmd>Telescope registers<CR>",
				desc = "Telescope registers",
			},
			{
				"<leader>fs",
				"<cmd>Telescope spell_suggest<CR>",
				desc = "Telescope spell_suggest",
			},
			-- TODO: Investigate LSP integration keybinds
		},
	},
}
