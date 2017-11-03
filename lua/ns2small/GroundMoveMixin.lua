local scale = (ns2small_scale.x + ns2small_scale.y + ns2small_scale.z) / 3
local old = assert(GroundMoveMixin.UpdatePosition)

function GroundMoveMixin:UpdatePosition(input, velocity, deltaTime)
	old(self, input, velocity * scale, deltaTime)
end
