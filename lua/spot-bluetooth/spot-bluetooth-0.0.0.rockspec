package = "spot-bluetooth"
version = "0.0.0"
source = {
	url = "git+http://git@github.com/KaitlynEthylia/spotlight",
	dir = "lua/spot-bluetooth",
}
description = {
	summary = "TODO",
	detailed = [[
		TODO
	]],
	homepage = "https://github.com/KaitlynEthylia/spotlight/tree/mistress/lua/spot-bluetooth",
	license = "JSON",
}
dependencies = {
}
build = {
	type = "builtin",
	modules = {
		["spot-bluetooth"] = "init.lua",
		["spot-bluetooth.modes"] = "modes.lua",
		["spot-bluetooth.sources"] = "sources.lua",
	},
}
