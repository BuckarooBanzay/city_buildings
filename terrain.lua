local MP = minetest.get_modpath("city_buildings")

building_lib.register_building("city_buildings:terrain_full", {
	catalog = {
		filename = MP .. "/schematics/terrain.zip",
		offset = {x=0, y=0, z=0},
		size = {x=1, y=1, z=1},
        cache = true
	}
})

building_lib.register_building("city_buildings:terrain_slope_inner", {
	catalog = {
		filename = MP .. "/schematics/terrain.zip",
		offset = {x=1, y=0, z=0},
		size = {x=1, y=1, z=1},
        cache = true
	}
})

building_lib.register_building("city_buildings:terrain_slope", {
	catalog = {
		filename = MP .. "/schematics/terrain.zip",
		offset = {x=2, y=0, z=0},
		size = {x=1, y=1, z=1},
        cache = true
	},
	rotation_offset = 90
})

building_lib.register_building("city_buildings:terrain_slope_outer", {
	catalog = {
		filename = MP .. "/schematics/terrain.zip",
		offset = {x=3, y=0, z=0},
		size = {x=1, y=1, z=1},
        cache = true
	}
})

building_lib.register_building("city_buildings:water", {
	catalog = {
		filename = MP .. "/schematics/full.zip",
        cache = true
	},
	replace = {
		["full_block"] = "default:water_source"
	}
})
