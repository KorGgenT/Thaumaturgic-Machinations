local function createAspect(name, color, flow_color, heat_capacity, ratio)
	data:extend {{
		type = "fluid",
		name = name,
		default_temperature = 25,
		heat_capacity = heat_capacity or "0.1KJ",
		base_color = color,
		flow_color = flow_color or color,
		max_temperature = 750,
		icon = "__Thaumaturgic-Machinations__/graphics/icons/Aspect/"..name..".png",
		icon_size = 32,
		pressure_to_speed_ratio = 0.6,
		flow_to_energy_ratio = 0.59
	}}
end

-- Primary Aspects

createAspect("Aer", {r=1, g=1, b=0.4}, {r=1, g=1, b=0.4})
createAspect("Aqua", {r=0.2, g=0.8, b=1}, {r=0.2, g=0.8, b=1})
createAspect("Ignis", {r=1, g=0, b=0}, {r=1, g=0, b=0}, "1300J")
createAspect("Ordo", {r=0.9, g=0.9, b=0.9}, {r=0.9, g=0.9, b=0.9})
createAspect("Perditio", {r=0.2, g=0.2, b=0.2}, {r=0.2, g=0.2, b=0.2})
createAspect("Terra", {r=0, g=1, b=0}, {r=0, g=1, b=0})

-- Tier 1 Aspects

createAspect("Gelum", {r=0.8, g=0.8, b=0.9}, {r=0.8, g=0.8, b=0.9}, "0.001KJ")
createAspect("Lux", {r=1, g=1, b=0.8}, {r=1, g=1, b=0.8})
createAspect("Metallum", {r=0.6, g=0.6, b=0.6}, {r=0.6, g=0.6, b=0.6})
createAspect("Mortuus", {r=0.4, g=0.4, b=0.4}, {r=0.4, g=0.4, b=0.4})
createAspect("Motus", {r=0.55, g=0.55, b=0.55}, {r=0.55, g=0.55, b=0.55})
createAspect("Permutatio", {r=0.2, g=0.4, b=0}, {r=0.2, g=0.4, b=0})
createAspect("Potentia", {r=0.4, g=1, b=1}, {r=0.4, g=1, b=1})
createAspect("Vacuous", {r=0.1, g=0.1, b=0.1}, {r=0.1, g=0.1, b=0.1})
createAspect("Vitae", {r=1, g=0.2, b=0.6}, {r=1, g=0.2, b=0.6})
createAspect("Vitreus", {r=0, g=1, b=1}, {r=0, g=1, b=1})

-- Tier 2 Aspects

createAspect("Auram", {r=1, g=0.6, b=1}, {r=1, g=0.6, b=1})
createAspect("Bestia", {r=0.6, g=0.4, b=0}, {r=0.6, g=0.4, b=0})
createAspect("Electrum", {r=0.4, g=1, b=1}, {r=0.4, g=1, b=1})
createAspect("Examinis", {r=0.3, g=0.3, b=0}, {r=0.3, g=0.3, b=0})
createAspect("Fames", {r=0.8, g=0, b=0}, {r=0.8, g=0, b=0})
createAspect("Herba", {r=0.1, g=1, b=0.1}, {r=0.1, g=1, b=0.1})
createAspect("Instrumentum", {r=0, g=0, b=1}, {r=0, g=0, b=1})
createAspect("Iter", {r=1, g=0.1, b=0.45}, {r=1, g=0.1, b=0.45})
createAspect("Machina", {r=0.45, g=0.45, b=0.45}, {r=0.45, g=0.45, b=0.45})
createAspect("Magneto", {r=0.25, g=0.25, b=0.25}, {r=0.25, g=0.25, b=0.25})
createAspect("Radio", {r=0.55, g=1, b=0.1}, {r=0.5, g=1, b=0.1})
createAspect("Spiritus", {r=0.75, g=0.75, b=0.75}, {r=0.75, g=0.75, b=0.75})
createAspect("Tempus", {r=0.8, g=0.4, b=1}, {r=0.8, g=0.4, b=1})
createAspect("Tenebrae", {r=0, g=0, b=0}, {r=0, g=0, b=0})
createAspect("Vinculum", {r=1, g=0.75, b=0.5}, {r=1, g=0.75, b=0.5})
createAspect("Vitium", {r=0.5, g=0, b=0.8}, {r=0.5, g=0, b=0.8})
createAspect("Volatus", {r=0.9, g=0.9, b=0.9}, {r=0.9, g=0.9, b=0.9})

-- Tier 3 Aspects
createAspect("Alienis", {r=0.3, g=0, b=0.5}, {r=0.3, g=0, b=0.5})
createAspect("Asidia", {r=0.8, g=0.5, b=0}, {r=0.8, g=0.5, b=0}, nil, 0.2)
createAspect("Avaritia", {r=1, g=0.85, b=0}, {r=1, g=0.85, b=0})
createAspect("Aversio", {r=1, g=0.3, b=0.3}, {r=1, g=0.3, b=0.3})
createAspect("Cognitio", {r=1, g=0.7, b=0.7}, {r=1, g=0.7, b=0.7})
createAspect("Fabrico", {r=0, g=0.7, b=0.5}, {r=0, g=0.7, b=0.5})
createAspect("Gula", {r=.9, g=0.75, b=0}, {r=0.8, g=0.5, b=0})
createAspect("Humanus", {r=1, g=0.9, b=0.9}, {r=1, g=0.9, b=0.9})
createAspect("Praemundio", {r=0.4, g=0.5, b=1}, {r=0.4, g=0.5, b=1})
createAspect("Sensus", {r=0, g=0.4, b=1}, {r=0, g=0.4, b=1})
createAspect("Superbia", {r=1, g=0, b=1}, {r=1, g=0, b=1})
createAspect("Infernus", {r=1, g=0.25, b=0}, {r=1, g=0.25, b=0})
createAspect("Invidia", {r=0, g=0.9, b=0}, {r=0, g=0.9, b=0})
createAspect("Ira", {r=0.9, g=0, b=0}, {r=0.9, g=0, b=0})
createAspect("Luxuria", {r=1, g=0.7, b=0.7}, {r=1, g=0.7, b=0.7})
--createAspect("Nebrisium", {r=1, g=0.9, b=0.2}, {r=1, g=0.9, b=0.2})

if creatio_enabled then
	createAspect("Creatio", {r=79/255, g=41/255, b = 71/255}, {r=79/255, g=41/255, b = 71/255})
end
