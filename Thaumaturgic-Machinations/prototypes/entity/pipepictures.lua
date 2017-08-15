function crucible2_pipes()
	return {
			north = {
				filename = "__Thaumaturgic-Machinations__/graphics/entity/crucible-2/pipe-north.png",
				priority = "extra-high",
				width = 160,
				height = 160,
				shift = {-1,2}
			},
			south = {
				filename = "__Thaumaturgic-Machinations__/graphics/entity/crucible-2/pipe-south.png",
				priority = "extra-high",
				width = 160,
				height = 160,
				shift = {1,-2}
			},
			east = {
				filename = "__Thaumaturgic-Machinations__/graphics/entity/crucible-2/pipe-east.png",
				priority = "extra-high",
				width = 160,
				height = 160,
				shift = {-2,-1}
			},
			west = {
				filename = "__Thaumaturgic-Machinations__/graphics/entity/crucible-2/pipe-west.png",
				priority = "extra-high",
				width = 160,
				height = 160,
				shift = {2,1}
			},
		}
end
function crucible_pipes()
	return {
		north = {
			filename = "__Thaumaturgic-Machinations__/graphics/entity/crucible/pipe-north.png",
			priority = "extra-high",
			width = 70,
			height = 50,
			shift = util.by_pixel(0,12),
			scale = 0.6
		},
		south = {
			filename = "__Thaumaturgic-Machinations__/graphics/entity/crucible/pipe-south.png",
			priority = "extra-high",
			width = 70,
			height = 50,
			shift = util.by_pixel(0,-20),
			scale = 0.6
		},
		east = {
			filename = "__Thaumaturgic-Machinations__/graphics/entity/crucible/pipe-east.png",
			priority = "extra-high",
			width = 70,
			height = 50,
			shift = util.by_pixel(-27,0),
			scale = 0.6
		},
		west = {
			filename = "__Thaumaturgic-Machinations__/graphics/entity/crucible/pipe-west.png",
			priority = "extra-high",
			width = 25,
			height = 50,
			shift = util.by_pixel(16,0),
			scale = 0.6
		},
	}
end