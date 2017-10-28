if not Server then return end

local old = CameraHolderMixin.__initmixin;

function CameraHolderMixin:__initmixin()
	old(self);
	if self:isa("Marine") or self:isa("Alien") then
		self:SetIsThirdPerson();
	end
end
