-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.font = wezterm.font("JetBrainsMono Nerd Font", {stretch = 'Expanded', weight='Medium', italic=false})

config.freetype_load_flags = 'NO_HINTING'

config.font_size = 14

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.9
config.macos_window_background_blur = 8

config.color_scheme = 'GruvboxDark'

local scheme = wezterm.color.get_builtin_schemes()[config.color_scheme]
scheme.cursor_fg = scheme.background
config.color_schemes = {
      [config.color_scheme] = scheme
      
}

-- and finally, return the configuration to wezterm

return config
