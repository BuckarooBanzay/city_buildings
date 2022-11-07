
minetest.register_on_generated(building_lib.create_mapgen({
    biomes = {
        {
            name = "default",
            temperature = 50,
            humidity = 50,
            buildings = {
                full = "city_buildings:terrain_full",
                slope = "city_buildings:terrain_slope",
                slope_inner = "city_buildings:terrain_slope_inner",
                slope_outer = "city_buildings:terrain_slope_outer"
            }
        }
    }
}))