vim.pack.add({
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-telescope/telescope.nvim",
})

require("telescope").setup({
  pickers = {
    find_files = {
      layout_config = {
        prompt_position = "top",
      },
      sorting_strategy = "ascending",
    },
    git_status = {
      layout_config = {
        prompt_position = "top",
      },
      sorting_strategy = "ascending",
    },
    oldfiles = {
      layout_config = {
        prompt_position = "top",
      },
      sorting_strategy = "ascending",
    },
    marks = {
      layout_config = {
        prompt_position = "top",
      },
      sorting_strategy = "ascending",
    },
    buffers = {
      layout_config = {
        prompt_position = "top",
      },
      sorting_strategy = "ascending",
    },
    registers = {
      layout_config = {
        prompt_position = "top",
      },
      sorting_strategy = "ascending",
    },
    spell_suggest = {
      layout_config = {
        prompt_position = "top",
      },
      sorting_strategy = "ascending",
    },
  },
})

-- Keymaps
vim.keymap.set(
  { "n", "v" },
  "<leader><leader>",
  "<cmd>Telescope find_files<CR>",
  { desc = "Telescope find files (CWD)" }
)
vim.keymap.set({ "n", "v" }, "<leader>fg", "<cmd>Telescope git_status<CR>", { desc = "Telescope Git status" })
vim.keymap.set({ "n", "v" }, "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Telescope Buffers" })
vim.keymap.set({ "n", "v" }, "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "Telescope Old Files" })
vim.keymap.set({ "n", "v" }, "<leader>fm", "<cmd>Telescope marks<CR>", { desc = "Telescope marks" })
vim.keymap.set({ "n", "v" }, "<leader>fr", "<cmd>Telescope registers<CR>", { desc = "Telescope registers" })
vim.keymap.set({ "n", "v" }, "<leader>fs", "<cmd>Telescope spell_suggest<CR>", { desc = "Telescope spell_suggest" })
