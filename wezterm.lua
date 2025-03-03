local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'Tokyo Night'

-- I don't want ligatures!!!
config.font = wezterm.font( 'JetBrainsMonoNL Nerd Font' )
config.font_size = 9
config.default_prog = { "C:\\Program Files\\PowerShell\\7-preview\\pwsh.exe" }

return config
