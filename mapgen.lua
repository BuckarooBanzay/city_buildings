
local mapgen = building_lib.create_mapgen({
    biomes = {
        {
            name = "default",
            temperature = 40,
            humidity = 50,
            buildings = {
                underground = "city_buildings:terrain_underground",
                surface = "city_buildings:terrain_surface",
                slope = "city_buildings:terrain_slope",
                slope_inner = "city_buildings:terrain_slope_inner",
                slope_outer = "city_buildings:terrain_slope_outer",
                water = "city_buildings:water"
            }
        },{
            name = "dry",
            temperature = 10,
            humidity = 20,
            buildings = {
                underground = "city_buildings:terrain_underground",
                surface = "city_buildings:terrain_surface_dry",
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

minetest.register_on_generated(mapgen.on_generated)
city_buildings.mapgen = mapgen