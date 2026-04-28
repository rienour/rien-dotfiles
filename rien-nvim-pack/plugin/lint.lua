vim.pack.add({
  "https://github.com/mfussenegger/nvim-lint",
})

local lint = require("lint")

local lint_events = {
  "BufWritePost",
  "BufReadPost",
  "InsertLeave",
}

local linters_by_ft = {
  go = { "golangci_lint_ls" },
}

local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
vim.api.nvim_create_autocmd(lint_events, {
  group = lint_augroup,
  callback = function()
    lint.try_lint()
  end,
})
