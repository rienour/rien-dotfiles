-- This table will contain the mapping for the LSP server to the settings,
-- if there are any, alongside the nvim-lspconfig
local lsp_configs = {
  lua_ls = {
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
  },
  vtsls = {
    settings = {
      vtsls = {
        tsserver = {
          globalPlugins = {
            {
              name = "@vue/typescript-plugin",
              location = os.getenv("VUE_LS_PATH"),
              languages = { "vue" },
              configNamespace = "typescript",
            },
          },
        },
      },
    },
    filetypes = {
      "js",
      "ts",
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
      "vue",
    },
  },
  vue_ls = {},
  ["golangci_lint_ls"] = {},
  gopls = {},
}

return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      for name, options in pairs(lsp_configs) do
        vim.lsp.config(name, {
          on_attach = require("util.lsp").on_client_attach,
          settings = options.settings,
          filetypes = options.filetypes,
        })
        vim.lsp.enable({ name })
      end
    end,
  },
}
