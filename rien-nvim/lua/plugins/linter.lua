return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      events = {
        "BufWritePost",
        "BufReadPost",
        "InsertLeave",
        "BufNewFile",
      },
      linters_by_ft = {
        ts = { "eslint" },
        tsx = { "eslint" },
        js = { "eslint" },
        jsx = { "eslint" },
        vue = { "eslint" },
        go = { "golangci-lint" },
      },
    },
    config = function(_, opts)
      local lint = require("lint")

      -- Setup linters by filetype
      lint.linters_by_ft = opts.linters_by_ft

      local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
      vim.api.nvim_create_autocmd(opts.events, {
        group = lint_augroup,
        callback = function()
          lint.try_lint()
        end,
      })
    end,
  },
}
