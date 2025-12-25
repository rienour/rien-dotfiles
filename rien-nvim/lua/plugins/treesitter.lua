-- Parsers to verify they're installed when loading
local ensure_installed = {
  "bash",
  "c",
  "cpp",
  "dockerfile",
  "lua",
  "vim",
  "vimdoc",
  "query",
  "markdown",
  "markdown_inline",
  "javascript",
  "typescript",
  "jsdoc",
  "json",
  "jsonc",
  "go",
  "gomod",
  "sql",
  "vue",
  "html",
  "css",
  "python",
  "graphql",
  "diff",
  "hyprlang",
  "php",
  "tsx",
  "yaml",
}

-- Autocommand to verify treesitter launchers, and installs if needed, when
-- opening a buffer
vim.api.nvim_create_autocmd({ "Filetype" }, {
  callback = function(event)
    local ok, nvim_treesitter = pcall(require, "nvim-treesitter")

    if not ok then
      return
    end

    local ft = vim.bo[event.buf].ft
    local lang = vim.treesitter.language.get_lang(ft)
    nvim_treesitter.install({ lang }):await(function(err)
      if err then
        vim.notify("Treesitter install error for ft: " .. ft .. " err: " .. err)
        return
      end

      pcall(vim.treesitter.start, event.buf)
    end)
  end,
})

-- Keymaps for use with text objects
local text_object_keymaps = {
  select = {
    ["ac"] = "@comment.outer",
    ["ic"] = "@comment.inner",
    ["if"] = "@function.inner",
    ["af"] = "@function.outer",
    ["ib"] = "@block.inner",
    ["ab"] = "@block.outer",
  },
}

return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = function()
      vim.cmd("TSUpdate")
    end,
    config = function(_, _)
      local ok, nvim_treesitter = pcall(require, "nvim-treesitter")

      if not ok then
        return
      end

      nvim_treesitter.install(ensure_installed)
    end,
    opts = {},
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",
    config = function(_)
      local set_select_bind = function(bind, query)
        vim.keymap.set({ "x", "o" }, bind, function()
          require("nvim-treesitter-textobjects.select").select_textobject(query, "textobjects")
        end)
      end

      for bind, query in pairs(text_object_keymaps.select) do
        set_select_bind(bind, query)
      end
    end,
    opts = {
      select = {
        enable = true,
        lookahead = true,
        selection_modes = {
          ["@parameter.outer"] = "v", -- charwise
          ["@function.outer"] = "v", -- linewise
          ["@class.outer"] = "<c-v>", -- blockwise
        },
        include_surrounding_whitespace = true,
      },
    },
  },
}
