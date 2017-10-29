local scale = ns2small_scale

local old = ExtentsMixin.GetExtents
function ExtentsMixin:GetExtents()
	return old(self) * scale
end
