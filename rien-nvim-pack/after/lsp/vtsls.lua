return {
  settings = {
    vtsls = {
      init_options = {
        hostInfo = "neovim",
      },
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
    "javascript",
    "typescript",
    "javascript.jsx",
    "typescript.jsx",
    "javascriptreact",
    "typescriptreact",
    "vue",
  },
}
