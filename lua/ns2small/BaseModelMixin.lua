local scale = ns2small_scale
local scale_x = scale.x
local scale_y = scale.y
local scale_z = scale.z

function BaseModelMixin:UpdateModelCoords()
	local modelCoords
	local physicsModel = self.physicsModel
	if physicsModel and physicsType == PhysicsType.Dynamic then
		modelCoords = physicsModel:GetCoords()
	else
		modelCoords = self:GetCoords()
	end

	modelCoords.xAxis = modelCoords.xAxis * scale_x
	modelCoords.yAxis = modelCoords.yAxis * scale_y
	modelCoords.zAxis = modelCoords.zAxis * scale_z

	local OnAdjustModelCoords = self.OnAdjustModelCoords
	if OnAdjustModelCoords then
		modelCoords = OnAdjustModelCoords(self, modelCoords)
	end

	self._modelCoords = modelCoords
end
