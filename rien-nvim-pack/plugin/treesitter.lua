vim.pack.add({
  { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" },
  { src = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects", version = "main" },
})

-- Parsers to verify they're installed when loading
local ensure_installed = {
  "bash",
  "c",
  "cpp",
  "dockerfile",
  "doxygen",
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
vim.api.nvim_create_autocmd("Filetype", {
  pattern = ensure_installed,
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

-- Tree Sitter Text Objects Setup
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

local set_select_bind = function(bind, query)
  vim.keymap.set({ "x", "o" }, bind, function()
    require("nvim-treesitter-textobjects.select").select_textobject(query, "textobjects")
  end)
end

for bind, query in pairs(text_object_keymaps.select) do
  set_select_bind(bind, query)
end
