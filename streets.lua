local MP = minetest.get_modpath("city_buildings")

local disable_orientation = {
	["default:stonebrick"] = true
}

building_lib.register_building("city_buildings:street_slope", {
	catalog = {
		filename = MP .. "/schematics/street.zip",
		offset = {x=0, y=0, z=0},
		size = {x=1, y=2, z=1}
	},
	disable_orientation = disable_orientation
})

building_lib.register_building("city_buildings:street_straight", {
	catalog = {
		filename = MP .. "/schematics/street.zip",
		offset = {x=2, y=0, z=0},
		size = {x=1, y=1, z=1}
	},
	disable_orientation = disable_orientation
})

building_lib.register_building("city_buildings:street_all_sides", {
	catalog = {
		filename = MP .. "/schematics/street.zip",
		offset = {x=1, y=0, z=0},
		size = {x=1, y=1, z=1}
	},
	disable_orientation = disable_orientation
})

building_lib.register_building("city_buildings:street_t", {
	catalog = {
		filename = MP .. "/schematics/street.zip",
		offset = {x=3, y=0, z=0},
		size = {x=1, y=1, z=1}
	},
	disable_orientation = disable_orientation
})

building_lib.register_building("city_buildings:street_corner", {
	catalog = {
		filename = MP .. "/schematics/street.zip",
		offset = {x=4, y=0, z=0},
		size = {x=1, y=1, z=1}
	},
	disable_orientation = disable_orientation
})