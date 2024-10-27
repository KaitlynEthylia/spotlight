return setmetatable({}, {
	__index = function (_, module)
		return require('spot-modes'..tostring(module))
	end
})
