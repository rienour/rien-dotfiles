vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.pack.add({
  "https://github.com/nvim-tree/nvim-web-devicons",
  "https://github.com/nvim-tree/nvim-tree.lua",
})
require("nvim-tree").setup({
  on_attach = function(bufnr)
    local api = require("nvim-tree.api")

    local function opts(desc)
      return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.map.on_attach.default(bufnr)

    -- custom mappings
    vim.keymap.set("n", ".", api.tree.change_root_to_parent, opts("Up"))
    -- vim.keymap.set("n", "l", api.tree.edit)
  end,
})

vim.keymap.set({ "n", "v" }, "<leader>e", "<cmd>NvimTreeToggle<cr>")
-- return {
--   {
--     "nvim-neo-tree/neo-tree.nvim",
--     branch = "v3.x",
--     lazy = true,
--     dependencies = {
--       "nvim-lua/plenary.nvim",
--       "MunifTanjim/nui.nvim",
--       "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
--     },
--     opts = {
--       window = {
--         mappings = {
--           ["l"] = "open",
--           ["h"] = "close_node",
--           ["<2-LeftMouse>"] = "noop",
--           ["<cr>"] = "noop",
--         },
--       },
--       filesystem = {
--         filtered_items = {
--           visible = true,
--         },
--       },
--     },
--     keys = {
--       {
--         "<leader>e",
--         "<cmd>Neotree toggle left<CR>",
--         desc = "Open Neotree (left)",
--       },
--       {
--         "<leader>El",
--         "<cmd>Neotree toggle right<CR>",
--         desc = "Open Neotree (right)",
--       },
--       {
--         "<leader>Ef",
--         "<cmd>Neotree toggle float<CR>",
--         desc = "Open Neotree (float)",
--       },
--     },
--   },
-- }
