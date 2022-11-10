local MP = minetest.get_modpath("city_buildings")

building_lib.register_building("city_buildings:strut", {
	catalog = MP .. "/schematics/strut.zip",
    replace = function(mapblock_pos)
        if city_buildings.mapgen and city_buildings.mapgen.is_water(mapblock_pos) then
            return {
                ["air"] = "default:water_source"
            }
        end
    end,
    build_over = {
		groups = {"water"}
	},
    group = {
        support = true
    }
})

building_lib.register_building("city_buildings:full_block", {
	catalog = MP .. "/schematics/strut.zip",
    replace = function(mapblock_pos)
        if city_buildings.mapgen and city_buildings.mapgen.is_water(mapblock_pos) then
            return {
                ["air"] = "default:water_source"
            }
        end
    end,
    ground_conditions = {
        group = "flat_surface"
    },
    build_over = {
		groups = {"water", "terrain_slope"}
	},
    groups = {
        flat_surface = true,
        support = true
    }
})