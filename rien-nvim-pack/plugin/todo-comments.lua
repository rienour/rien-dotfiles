vim.pack.add({
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-telescope/telescope.nvim",
  "https://github.com/folke/todo-comments.nvim",
})

require("todo-comments").setup({})

-- Keymaps
vim.keymap.set({ "n", "v" }, "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Telescope Todo comments" })
vim.keymap.set(
  { "n", "v" },
  "<leader>fT",
  "<cmd>TodoTelescope keywords=FIX,TODO,WARN,ERROR<cr>",
  { desc = "Telescope Todo comments" }
)

vim.keymap.set({ "n", "v" }, "]t", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })
vim.keymap.set({ "n", "v" }, "[t", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })
