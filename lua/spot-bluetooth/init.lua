return setmetatable({}, {
	__index = function (_, module)
		return require('spot-bluetooth'..tostring(module))
	end
})
