local kEntranceAPos = debug.getupvalue(Tunnel.GetEntranceAPosition,  "kEntranceAPos") * ns2small_scale
local kEntranceBPos = debug.getupvalue(Tunnel.GetEntranceBPosition,  "kEntranceBPos") * ns2small_scale
local kTunnelLength = debug.getupvalue(Tunnel.GetFractionalPosition, "kTunnelLength") * ns2small_scale.z

debug.setupvalue(Tunnel.GetEntranceAPosition,  "kEntranceAPos", kEntranceAPos)
debug.setupvalue(Tunnel.GetEntranceBPosition,  "kEntranceBPos", kEntranceBPos)
debug.setupvalue(Tunnel.GetFractionalPosition, "kTunnelLength", kTunnelLength)
