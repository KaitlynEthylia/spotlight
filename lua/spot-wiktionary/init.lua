return setmetatable({}, {
	__index = function (_, module)
		return require('spot-wiktionary'..tostring(module))
	end
})
