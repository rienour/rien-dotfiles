vim.g.autoformat = true

vim.pack.add({
  "https://github.com/stevearc/conform.nvim",
})

require("conform").setup({
  format_on_save = function()
    if vim.g.autoformat then
      return { timeout_ms = 5000, lsp_format = "fallback" }
    else
      return
    end
  end,
  formatters_by_ft = {
    lua = { "stylua" },
    typescriptreact = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    javascript = { "prettier" },
    vue = { "prettier" },
    json = { "prettier" },
    jsonc = { "prettier" },
    markdown = { "prettier" },
    python = { "black", "ruff_organize_imports" },
    cpp = { "clang-format" },
    c = { "clang-format" },
    rust = { "rustfmt" },
  },
})

-- Keymaps
vim.keymap.set({ "n", "v" }, "<leader>cf", function()
  require("conform").format({ async = true })
end, { desc = "Format buffer" })

vim.keymap.set({ "n", "v" }, "<leader>tf", function()
  vim.g.autoformat = not vim.g.autoformat
  vim.notify("Auto-format: " .. (vim.g.autoformat and "on" or "off"))
end)
