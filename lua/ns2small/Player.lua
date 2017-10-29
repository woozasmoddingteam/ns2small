local scale_y          = ns2small_scale.y
local scale_horizontal = math.min(ns2small_scale.x, ns2small_scale.z)

local old = assert(Player.SetViewOffsetHeight)
function Player:SetViewOffsetHeight(height)
	old(self, height * scale_y)
end
