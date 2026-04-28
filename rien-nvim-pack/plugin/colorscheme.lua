-- Function to handle loading the color scheme(s)
local load_colorscheme = function(name, opts)
  require(name).setup(opts)
  vim.cmd.colorscheme(name)
end

local active_colorscheme = os.getenv("NVIM_COLORSCHEME")

-- Configurations for used color schemes
local color_scheme_options = {
  kanagawa = {
    src = "https://github.com/rebelot/kanagawa.nvim",
    opts = {
      theme = "dragon",
      background = {
        dark = "dragon",
        light = "wave",
      },
    },
  },
  onedark = {
    src = "https://github.com/navarasu/onedark.nvim",
    opts = {
      style = "darker",
    },
  },
  tokyonight = {
    src = "https://github.com/folke/tokyonight.nvim",
    opts = {
      style = "night",
    },
  },
}

if active_colorscheme and color_scheme_options[active_colorscheme] ~= nil then
  local scheme = color_scheme_options[active_colorscheme]
  vim.pack.add({
    { src = scheme.src },
  }, { load = false })
  require(active_colorscheme).setup(scheme.opts or {})

  vim.cmd.colorscheme(active_colorscheme)
elseif active_colorscheme then
  vim.notify("Invalid colorscheme specified " .. active_colorscheme, vim.log.levels.ERROR)
end
