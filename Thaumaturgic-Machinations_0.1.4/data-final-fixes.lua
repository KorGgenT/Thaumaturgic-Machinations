--[[
log("PREPARE FOR LOG DESTRUCTION")
local inherited = {}

for i,v in pairs(data.raw.recipe) do
	TM.Inheritance(inherited, v.name)
end

for i,v in pairs(data.raw.recipe) do
	TM.icons_assign(v.name)
end

log("LOG DESTRUCTION CONCLUDED.")
]]--