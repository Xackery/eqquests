function event_death(e)
local xloc = e.self:GetX();
local yloc = e.self:GetY();
local zloc = e.self:GetZ();
local heading = e.self:GetHeading();
eq.spawn2(eq.ChooseRandom(158110,158111,158112,158113,158114),0,0,xloc,yloc,zloc,heading);
end
