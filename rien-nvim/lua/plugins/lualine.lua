return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      sections = {
        lualine_a = { "filename" },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "lsp_status" },
      },
      inactive_sections = {
        lualine_a = { "filename" },
        lualine_b = {},
        lualine_c = {},
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = { "diagnostics" },
      },
      tabline = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff" },
        lualine_x = { "diagnostics", "filename" },
        lualine_y = { "filetype" },
        lualine_z = { "location" },
      },
      winbar = {},
      inactive_winbar = {},
      extensions = {},
    },
  },
}
