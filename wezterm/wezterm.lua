-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 11
config.color_scheme = 'Dark Ocean (terminal.sexy)'

local dimmer = { 
    brightness = 0.015,  
    --saturation = 0.5,
}

config.background = {
      {
        source = { File = "/home/iana/.config/wezterm/background3.jpg" },
        width = "Cover",
        height = "Cover",
        horizontal_align = "Center",  -- ок
        vertical_align = "Middle",    -- вместо Center
        opacity = 1,
        hsb = dimmer,
      }
    
}

-- Finally, return the configuration to wezterm:
return config
