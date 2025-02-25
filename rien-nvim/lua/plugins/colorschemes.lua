-- Active selected colorscheme at launch
local active_colorscheme = "kanagawa"

-- Function to handle loading the colorscheme(s)
local load_colorscheme = function (name, opts)
  require(name).setup(opts)
  vim.cmd.colorscheme(name)
end

return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    enabled = active_colorscheme == "kanagawa",
    config = function()
      load_colorscheme('kanagawa', {
        theme = "dragon",
        background = {
          dark = "dragon",
          light = "wave",
        },
      })
    end,
  },
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    enabled = active_colorscheme == "onedark",
    config = function()
      load_colorscheme('onedark', {
        style = "darker",
      })
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    enabled = active_colorscheme == "tokyonight",
    config = function()
      load_colorscheme('tokyonight', {
        style = "night",
      })
    end,
  },
}
