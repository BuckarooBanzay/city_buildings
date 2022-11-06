local MP = minetest.get_modpath("city_buildings")

local disable_orientation = {
	["default:stonebrick"] = true
}

building_lib.register_building("city_buildings:street_straight", {
	catalog = MP .. "/schematics/street_straight.zip",
	disable_orientation = disable_orientation
})

building_lib.register_building("city_buildings:street_corner", {
	catalog = MP .. "/schematics/street_corner.zip",
	disable_orientation = disable_orientation
})

building_lib.register_building("city_buildings:street_all_sides", {
	catalog = MP .. "/schematics/street_all_sides.zip",
	disable_orientation = disable_orientation
})

building_lib.register_building("city_buildings:street_t", {
	catalog = MP .. "/schematics/street_t.zip",
	disable_orientation = disable_orientation
})