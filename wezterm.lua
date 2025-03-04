local wezterm = require("wezterm")
local os = require("os")

local config = {}

--- Check if a file or directory exists in this path
local function exists(file)
	local ok, err, code = os.rename(file, file)
	if not ok then
		if code == 13 then
			-- Permission denied, but it exists
			return true
		end
	end
	return ok, err
end

config.color_scheme = "Tokyo Night"

-- I don't want ligatures!!!
config.font = wezterm.font("JetBrainsMonoNL Nerd Font")
config.font_size = 9
config.window_decorations = "RESIZE"

local function default_program_powershell()
	local powershell = nil
	local program_files = "C:\\Program Files"
	local powershell_options = { "7-preview", "7" }
	for _, version in pairs(powershell_options) do
		local P = program_files .. "\\" .. "PowerShell" .. "\\" .. version .. "\\" .. "pwsh.exe"
		if exists(P) then
			powershell = P
			break
		end
	end

	return { powershell, "-nol" }
end

local function default_program_zsh()
	return { "C:\\git-sdk-64\\msys2_shell.cmd", "-defterm", "-here", "-no-start", "-ucrt64", "-shell", "bash" }
end
config.default_prog = default_program_zsh()
--config.default_prog = default_program_powershell()

return config
