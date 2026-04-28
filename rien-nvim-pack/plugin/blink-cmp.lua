vim.pack.add({
  { src = "https://github.com/Saghen/blink.cmp", version = vim.version.range("1.*") },
  { src = "https://github.com/rafamadriz/friendly-snippets" },
})

-- Default Sources to pull completion information from
local default_sources = {
  "lsp",
  "path",
  "snippets",
  "buffer",
}

require("blink.cmp").setup({
  keymap = { preset = "default" },
  appearance = {
    nerd_font_variant = "mono",
  },
  cmdline = {
    enabled = false,
  },
  sources = {
    default = default_sources,
  },
})
