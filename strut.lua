local MP = minetest.get_modpath("city_buildings")

building_lib.register_building("city_buildings:strut", {
	catalog = MP .. "/schematics/strut.zip",
    replace = function(mapblock_pos)
        if city_buildings.mapgen and city_buildings.mapgen.is_water(mapblock_pos) then
            return {
                ["air"] = "default:water_source"
            }
        end
    end
})