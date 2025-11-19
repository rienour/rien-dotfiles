return {
  {
    "nvim-telescope/telescope.nvim",
    lazy = true,
    cmd = "Telescope",
    opts = {
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
    },
    keys = {
      {
        "<leader><leader>",
        "<cmd>Telescope find_files<CR>",
        desc = "Telescope find files (CWD)",
      },
      {
        "<leader>fg",
        "<cmd>Telescope git_status<CR>",
        desc = "Telescope Git status",
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
    },
  },
}
