local M = {}

local main_desktop_left = {
	output = "HDMI-A-3",
	mode = "1920x1080@180.00Hz",
	position = "-1080x-0",
	scale = "1",
	transform = "3",
}

local main_desktop_center = {
	output = "DP-5",
	mode = "3840x1920@144.00Hz",
	position = "0x0",
	scale = "1",
}

local main_desktop_right = {
	output = "DP-4",
	mode = "1920x1080@60.00Hz",
	position = "3840x0",
	scale = "1",
}

local main_desktop = {
	main_desktop_left,
	main_desktop_center,
	main_desktop_right,
}

local hp_laptop = {
	{
		output = "eDP-1",
		mode = "1920x1080@60.00Hz",
		position = "0x0",
		scale = "1",
	},
}

M.get_dev_monitors = function(device)
	if device == "main_desktop" then
		hl.workspace_rule({ workspace = "1", monitor = main_desktop.output })
		hl.workspace_rule({ workspace = "2", monitor = main_desktop.output })
		hl.workspace_rule({ workspace = "3", monitor = main_desktop.output })
		hl.workspace_rule({ workspace = "4", monitor = main_desktop.output })
		hl.workspace_rule({ workspace = "5", monitor = main_desktop_left.output })
		hl.workspace_rule({ workspace = "6", monitor = main_desktop_left.output })
		hl.workspace_rule({ workspace = "7", monitor = main_desktop_left.output })
		hl.workspace_rule({ workspace = "8", monitor = main_desktop_left.output })
		hl.workspace_rule({ workspace = "9", monitor = main_desktop_right.output })
		hl.workspace_rule({ workspace = "10", monitor = main_desktop_right.output })
		hl.workspace_rule({ workspace = "11", monitor = main_desktop_right.output })
		hl.workspace_rule({ workspace = "12", monitor = main_desktop_right.output })
		return main_desktop
	elseif device == "hp_laptop" then
		return hp_laptop
	else
		return nil
	end
end

return M
