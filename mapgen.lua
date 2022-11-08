
local on_generated, mapgen = building_lib.create_mapgen({
    biomes = {
        {
            name = "default",
            temperature = 50,
            humidity = 50,
            buildings = {
                full = "city_buildings:terrain_full",
                slope = "city_buildings:terrain_slope",
                slope_inner = "city_buildings:terrain_slope_inner",
                slope_outer = "city_buildings:terrain_slope_outer",
                water = "city_buildings:water"
            }
        }
    },
    from_y = -5,
    to_y = 10,
    water_level = 0
})

minetest.register_on_generated(on_generated)
city_buildings.mapgen = mapgen