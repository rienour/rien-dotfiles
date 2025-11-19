return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      events = {
        "BufWritePost",
        "BufReadPost",
      },
      linters_by_ft = {
        lua = { "luacheck" },
        ts = { "eslint" },
        tsx = { "eslint" },
        js = { "eslint" },
        jsx = { "eslint" },
        vue = { "eslint" },
        go = { "golangci-lint" },
      },
    },
    config = function()
      local lint = require("lint")

      local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
        pattern = { "*.lua" },
        group = lint_augroup,
        callback = function()
          lint.try_lint()
        end,
      })
    end,
  },
}
