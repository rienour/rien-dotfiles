vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.pack.add({
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/MunifTanjim/nui.nvim",
  "https://github.com/nvim-tree/nvim-web-devicons",
  {
    src = "https://github.com/nvim-neo-tree/neo-tree.nvim",
    version = vim.version.range("3"),
  },
})
require("neo-tree").setup({
  window = {
    mappings = {
      ["l"] = "open",
      ["h"] = "close_node",
      ["<2-LeftMouse>"] = "noop",
      ["<cr>"] = "noop",
    },
  },
  filesystem = {
    filtered_items = {
      visible = true,
    },
  },
})

vim.keymap.set({ "n", "v" }, "<leader>e", "<cmd>Neotree toggle left<CR>", { desc = "Open Neotree" })
