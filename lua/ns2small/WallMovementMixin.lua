
function WallMovementMixin:ValidWallTrace(trace)
    if trace.fraction < 1 and trace.surface ~= "nocling" then
        local entity = trace.entity
        return entity == nil or entity.GetIsWallWalkingAllowed and entity:GetIsWallWalkingAllowed(self)
    end

    return false
end
