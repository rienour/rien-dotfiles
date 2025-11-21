return {
  {
    "nvim-treesitter/nvim-treesitter",
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
    opts = {
      ensure_installed = {
        "bash",
        "c",
        "cpp",
        "dockerfile",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "markdown",
        "markdown_inline",
        "javascript",
        "typescript",
        "jsdoc",
        "json",
        "jsonc",
        "go",
        "gomod",
        "sql",
        "vue",
        "html",
        "css",
        "python",
        "graphql",
        "diff",
        "hyprlang",
        "php",
        "tsx",
        "yaml",
      },
      incremental_selection = {
        enable = true,
        keymaps = {},
      },
      auto_install = false,
      highlight = {
        enable = true,
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
            ["as"] = { query = "@local.scope", query_group = "locals", desc = "Select language scope" },
          },
          selection_modes = {
            ["@parameter.outer"] = "v", -- charwise
            ["@function.outer"] = "v", -- linewise
            ["@class.outer"] = "<c-v>", -- blockwise
          },
          include_surrounding_whitespace = true,
        },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
}
