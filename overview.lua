
local overview_start_y = 25000

-- mapblock_pos to node-pos
function city_buildings.mapblock_pos_to_overview(mapblock_pos)
    return {
        x = mapblock_pos.x,
        y = mapblock_pos.y + overview_start_y,
        z = mapblock_pos.z
    }
end

-- node_pos to mapblock_pos
function city_buildings.overview_to_mapblock_pos(node_pos)
    node_pos = vector.round(node_pos)
    return {
        x = node_pos.x,
        y = node_pos.y - overview_start_y,
        z = node_pos.z
    }
end

function city_buildings.is_in_overview(node_pos)
    return node_pos.y >= overview_start_y
end

-- node-pos to node-pos (centered)
function city_buildings.overview_to_node_pos(node_pos)
    local mapblock_pos = city_buildings.overview_to_mapblock_pos(node_pos)
    local min = mapblock_lib.get_mapblock_bounds_from_mapblock(mapblock_pos)
    return vector.add(min, 7.5)
end

local function place_overview_node(mapblock_pos, overview_def)
    local node_pos = city_buildings.mapblock_pos_to_overview(mapblock_pos)
    if type(overview_def) == "string" then
        minetest.set_node(node_pos, { name=overview_def })
    end
end

building_lib.register_on("placed_mapgen", function(mapblock_pos, building_def)
    place_overview_node(mapblock_pos, building_def.overview)
end)

building_lib.register_on("placed", function(mapblock_pos, _, building_def)
    place_overview_node(mapblock_pos, building_def.overview)
end)
