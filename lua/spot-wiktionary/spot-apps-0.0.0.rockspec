package = "spot-wiktionary"
version = "0.0.0"
source = {
	url = "git+http://git@github.com/KaitlynEthylia/spotlight",
	dir = "lua/spot-wiktionary",
}
description = {
	summary = "TODO",
	detailed = [[
		TODO
	]],
	homepage = "https://github.com/KaitlynEthylia/spotlight/tree/mistress/lua/spot-wiktionary",
	license = "JSON",
}
dependencies = {
}
build = {
	type = "builtin",
	modules = {
		["spot-wiktionary"] = "init.lua",
		["spot-wiktionary.modes"] = "modes.lua",
		["spot-wiktionary.sources"] = "sources.lua",
	},
}
