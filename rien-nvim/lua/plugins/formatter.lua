return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    keys = {
      {
        "<leader>cf",
        function()
          require("conform").format({ async = true })
        end,
        mode = { "n", "v" },
        desc = "Format buffer",
      },
    },
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        ts = { "prettier" },
        tsx = { "prettier" },
        typescript = { "prettier" },
        js = { "prettier" },
        jsx = { "prettier" },
        javascript = { "prettier" },
        vue = { "prettier" },
        json = { "prettier" },
        jsonc = { "prettier" },
        python = {
          "ruff_organize_imports",
          "ruff_fix",
          "ruff_format",
        },
      },
      default_format_opts = {
        lsp_format = "fallback",
      },
      format_on_save = {
        timeout_ms = 500,
      },
    },
  },
}
