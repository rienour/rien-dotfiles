vim.pack.add({
  "https://github.com/lewis6991/gitsigns.nvim",
})

require("gitsigns").setup({

  current_line_blame = true,
  on_attach = function(bufnr)
    local gitsigns = require("gitsigns")

    -- Keymaps
    vim.keymap.set({ "n", "v" }, "<leader>tb", require("gitsigns").toggle_current_line_blame)
    vim.keymap.set({ "n", "v" }, "<leader>gb", function()
      gitsigns.blame_line({ full = true })
    end)
  end,
})
