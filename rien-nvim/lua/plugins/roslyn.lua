return {
  {
    "seblyng/roslyn.nvim",
    opts = {},
    config = function()
      vim.lsp.config("roslyn", {
        on_attach = require("util.lsp").on_client_attach,
        cmd = {
          "dotnet",
          os.getenv("ROSLYN_LS_PATH"),
          "--logLevel",
          "Information",
          "--extensionLogDirectory",
          "/tmp/dotnet_logs.log",
          "--stdio",
        },
      })
      vim.lsp.enable("roslyn")
    end,
  },
}
