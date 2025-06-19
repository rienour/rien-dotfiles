return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        on_attach = require("util.lsp").on_client_attach,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
            telemetry = {
              enalbled = false,
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
            },
          },
        },
      })
    end,
  },
}
