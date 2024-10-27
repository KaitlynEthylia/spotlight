package = "spot-apps"
version = "0.0.0"
source = {
	url = "git+http://git@github.com/KaitlynEthylia/spotlight",
	dir = "lua/spot-apps",
}
description = {
	summary = "TODO",
	detailed = [[
		TODO
	]],
	homepage = "https://github.com/KaitlynEthylia/spotlight/tree/mistress/lua/spot-apps",
	license = "JSON",
}
dependencies = {
}
build = {
	type = "builtin",
	modules = {
		["spot-apps"] = "init.lua",
		["spot-apps.modes"] = "modes.lua",
		["spot-apps.sources"] = "sources.lua",
	},
}
