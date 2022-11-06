local MP = minetest.get_modpath("city_buildings")

building_lib.register_building("building_lib:street_straight", {
	catalog = MP .. "/schematics/street_straight.zip"
})

building_lib.register_building("building_lib:street_corner", {
	catalog = MP .. "/schematics/street_corner.zip"
})

building_lib.register_building("building_lib:street_all_sides", {
	catalog = MP .. "/schematics/street_all_sides.zip"
})

building_lib.register_building("building_lib:street_t", {
	catalog = MP .. "/schematics/street_t.zip"
})