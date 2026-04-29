return {
  settings = {
    python = {
      venvPath = os.getenv("VIRTUAL_ENV"),
      pythonPath = vim.fn.exepath("python"),
    },
    basedpyright = {
      analysis = {
        typeCheckingMode = "strict",
      },
    },
  },
}
