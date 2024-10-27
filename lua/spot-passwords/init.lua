return setmetatable({}, {
	__index = function (_, module)
		return require('spot-passwords'..tostring(module))
	end
})
