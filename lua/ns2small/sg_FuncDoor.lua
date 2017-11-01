local scale = ns2small_scale
local scale_x = 1 / scale.x
local scale_y = 1 / scale.y
local scale_z = 1 / scale.z

local old = FuncDoor.OnAdjustModelCoords or function() end
function FuncDoor:OnAdjustModelCoords(modelCoords)
	old(self, modelCoords)

	modelCoords.xAxis = modelCoords.xAxis * scale_x
	modelCoords.yAxis = modelCoords.yAxis * scale_y
	modelCoords.zAxis = modelCoords.zAxis * scale_z

	return modelCoords
end
