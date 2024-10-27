package = "spot-networks"
version = "0.0.0"
source = {
	url = "git+http://git@github.com/KaitlynEthylia/spotlight",
	dir = "lua/spot-networks",
}
description = {
	summary = "TODO",
	detailed = [[
		TODO
	]],
	homepage = "https://github.com/KaitlynEthylia/spotlight/tree/mistress/lua/spot-networks",
	license = "JSON",
}
dependencies = {
}
build = {
	type = "builtin",
	modules = {
		["spot-networks"] = "init.lua",
		["spot-networks.modes"] = "modes.lua",
		["spot-networks.sources"] = "sources.lua",
	},
}
