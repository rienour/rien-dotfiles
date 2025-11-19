-- This table will contain the mapping for the LSP server to the settings,
-- if there are any, alongside the nvim-lspconfig
local lsp_configs = {
  lua_ls = {
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
}

return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      for name, settings in pairs(lsp_configs) do
        vim.lsp.config(name, {
          on_attach = require("util.lsp").on_client_attach,
          settings = settings,
        })
        vim.lsp.enable({ name })
      end
    end,
  },
}
