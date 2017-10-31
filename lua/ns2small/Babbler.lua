local old = Babbler.OnAdjustModelCoords or function() end
function Babbler:OnAdjustModelCoords(modelCoords)
	old(self, modelCoords)

	modelCoords.xAxis = modelCoords.xAxis * 2
	modelCoords.yAxis = modelCoords.yAxis * 2
	modelCoords.zAxis = modelCoords.zAxis * 2

	return modelCoords
end
