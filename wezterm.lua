local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'Tokyo Night'
config.font = wezterm.font( 'JetBrains Mono' )
config.font_size = 9.0
config.default_prog = { "C:\\Program Files\\PowerShell\\7-preview\\pwsh.exe" }

return config
