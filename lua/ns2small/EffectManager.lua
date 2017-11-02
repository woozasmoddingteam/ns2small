local scale = ns2small_scale
local scale_x = 1 / scale.x
local scale_y = 1 / scale.y
local scale_z = 1 / scale.z

local old = EffectManager.TriggerEffects
function EffectManager:TriggerEffects(name, params, ent)
	local coords = params[kEffectHostCoords]

	if coords ~= nil then
		coords.xAxis = coords.xAxis * scale_x
		coords.yAxis = coords.yAxis * scale_y
		coords.zAxis = coords.zAxis * scale_z

		params[kEffectHostCoords] = coords
	end

	return old(self, name, params, ent)
end
