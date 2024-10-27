package = "spot-passwords"
version = "0.0.0"
source = {
	url = "git+http://git@github.com/KaitlynEthylia/spotlight",
	dir = "lua/spot-passwords",
}
description = {
	summary = "TODO",
	detailed = [[
		TODO
	]],
	homepage = "https://github.com/KaitlynEthylia/spotlight/tree/mistress/lua/spot-passwords",
	license = "JSON",
}
dependencies = {
}
build = {
	type = "builtin",
	modules = {
		["spot-passwords"] = "init.lua",
		["spot-passwords.modes"] = "modes.lua",
		["spot-passwords.sources"] = "sources.lua",
	},
}
