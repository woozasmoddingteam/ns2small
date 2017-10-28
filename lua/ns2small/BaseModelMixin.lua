function BaseModelMixin:UpdateModelCoords()
    local modelCoords = nil
    local physicsModel = self.physicsModel
    if physicsModel and physicsType == PhysicsType.Dynamic then
        modelCoords = physicsModel:GetCoords()
    else
        modelCoords = self:GetCoords()
    end

	modelCoords.xAxis = modelCoords.xAxis * 0.5;
	modelCoords.yAxis = modelCoords.yAxis * 0.5;
	modelCoords.zAxis = modelCoords.zAxis * 0.5;
	
    local OnAdjustModelCoords = self.OnAdjustModelCoords
    if OnAdjustModelCoords then
        self._modelCoords = OnAdjustModelCoords(self, modelCoords)
    else
        self._modelCoords = modelCoords
    end

end
