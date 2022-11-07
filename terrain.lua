local MP = minetest.get_modpath("city_buildings")

building_lib.register_building("city_buildings:terrain_full", {
	catalog = {
		filename = MP .. "/schematics/terrain.zip",
		offset = {x=0, y=0, z=0},
		size = {x=1, y=1, z=1}
	}
})

building_lib.register_building("city_buildings:terrain_slope_inner", {
	catalog = {
		filename = MP .. "/schematics/terrain.zip",
		offset = {x=1, y=0, z=0},
		size = {x=1, y=1, z=1}
	}
})

building_lib.register_building("city_buildings:terrain_slope", {
	catalog = {
		filename = MP .. "/schematics/terrain.zip",
		offset = {x=2, y=0, z=0},
		size = {x=1, y=1, z=1}
	}
})

building_lib.register_building("city_buildings:terrain_slope_outer", {
	catalog = {
		filename = MP .. "/schematics/terrain.zip",
		offset = {x=3, y=0, z=0},
		size = {x=1, y=1, z=1}
	}
})
