return {
  {
    "folke/todo-comments.nvim",
    cmd = { "TodoTelescope" },
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    opts = {},
    keys = {
      {
        "<leader>ft",
        "<cmd>TodoTelescope<cr>",
        desc = "Telescope Todo comments",
      },
      {
        "<leader>fT",
        "<cmd>TodoTelescope filter = {tag = {TODO,FIX,FIXME}}<cr>",
        desc = "Telescope Todo comments",
      },
    },
  },
}
