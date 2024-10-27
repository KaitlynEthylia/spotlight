return setmetatable({}, {
	__index = function (_, module)
		return require('spot-apps'..tostring(module))
	end
})
