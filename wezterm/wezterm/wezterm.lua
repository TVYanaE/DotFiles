-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.


-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font = wezterm.font_with_fallback {
  "JetBrains Mono",
  "Symbols Nerd Font Mono",
}
config.font_size = 13
config.color_scheme = 'Dark Ocean (terminal.sexy)'

config.text_background_opacity = 1.0

-- Settings for background image 
local dimmer = { 
    --brightness = 0.015,  
    --saturation = 0.5,
}

config.background = {
      {
        source = { File = "/home/iana/.config/wezterm/background_lizard.png" },
        width = "Cover",
        height = "Cover",
        horizontal_align = "Center",  -- ок
        vertical_align = "Middle",    -- вместо Center
        opacity = 1,
        hsb = dimmer,
      }
    
}

-- Settings for windows padding
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

config.window_decorations = "None"

-- Turn off scrollbar
config.enable_scroll_bar = false


wezterm.on('format-tab-title', 
    function(tab, tabs, panes, config, hover, max_width)
    
    local active_pane = tab.active_pane
    local current_working_url = active_pane.current_working_dir
    if current_working_url then
        local working_path = current_working_url.path

        local pattern = "([^/]+/?)$"
        local working_dir = string.match(working_path, pattern)
        
        return {{ Text = working_dir }}
    end

    return {{ Text = 'test' }}
    end
)

-- Finally, return the configuration to wezterm:
return config
