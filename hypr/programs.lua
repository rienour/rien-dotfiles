local M = {}

M.terminal = "alacritty"
M.menu = "rofi -show"
M.region_shot =
	[[grim -g "$(slurp -b '000000b0' -c 'FFFFFFFF')" - | wl-copy; notify-send "Copied to Clipboard" "Region Screenshot"]]

return M
