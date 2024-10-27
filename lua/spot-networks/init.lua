return setmetatable({}, {
	__index = function (_, module)
		return require('spot-networks'..tostring(module))
	end
})
