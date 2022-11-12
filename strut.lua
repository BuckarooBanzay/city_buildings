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
    conditions = {
        {
            ["*"] = { empty = true },
            ["underground"] = { group = "flat_surface" }
        },{
            ["*"] = { group = "water" },
            ["underground"] = { group = "flat_surface" }
        },{
            ["*"] = { empty = true },
            ["underground"] = { group = "support" }
        }
    },
    group = {
        support = true
    }
})

building_lib.register_building("city_buildings:full_block", {
	catalog = MP .. "/schematics/full.zip",
    replace = {
        ["full_block"] = "default:stone"
    },
    conditions = {
        {
            ["*"] = { empty = true },
            ["underground"] = { group = "flat_surface" }
        },{
            ["*"] = { group = "water" },
            ["underground"] = { group = "flat_surface" }
        },{
            ["*"] = { group = "terrain_slope"}
        }
    },
    groups = {
        flat_surface = true,
        support = true
    },
    overview = "default:stone"
})