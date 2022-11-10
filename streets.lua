local MP = minetest.get_modpath("city_buildings")

local disable_orientation = {
	["moreblocks:iron_stone_bricks"] = true
}

local has_street_signs_mod = minetest.get_modpath("street_signs")

local content_street_sign = -1
if has_street_signs_mod then
	content_street_sign = minetest.get_content_id("street_signs:sign_basic")
end

local function on_streetsign_metadata(pos, content_id, meta)
	if content_id == content_street_sign then
		-- write street name
		local mapblock_pos = mapblock_lib.get_mapblock(pos)
		local z_streetname = city_buildings.get_street_name(mapblock_pos.x * 3)
		local x_streetname = city_buildings.get_street_name((mapblock_pos.z * 3) + 2048)
		local txt = z_streetname .. "\n" .. x_streetname
		meta:set_string("infotext", txt)
		meta:set_string("text", txt)
	end
end

building_lib.register_building("city_buildings:street_slope", {
	catalog = {
		filename = MP .. "/schematics/street.zip",
		offset = {x=0, y=0, z=0},
		size = {x=1, y=2, z=1}
	},
	rotation_offset = 180,
	disable_orientation = disable_orientation,
	build_over = {
		groups = {"terrain_slope"}
	}
})

building_lib.register_building("city_buildings:street_straight", {
	catalog = {
		filename = MP .. "/schematics/street.zip",
		offset = {x=2, y=0, z=0},
		size = {x=1, y=1, z=1}
	},
	markers = {
		{
			texture = "building_lib_arrow.png",
			position = {x=1.5, y=0.2, z=0.5},
			rotation = {x=math.pi/2, y=0, z=math.pi/2},
			size = {x=10, y=10}
		},{
			texture = "building_lib_arrow.png",
			position = {x=-0.5, y=0.2, z=0.5},
			rotation = {x=math.pi/2, y=0, z=-math.pi/2},
			size = {x=10, y=10}
		}
	},
	disable_orientation = disable_orientation
})

building_lib.register_building("city_buildings:street_all_sides", {
	catalog = {
		filename = MP .. "/schematics/street.zip",
		offset = {x=1, y=0, z=0},
		size = {x=1, y=1, z=1}
	},
	markers = {
		{
			texture = "building_lib_arrow.png",
			position = {x=1.5, y=0.2, z=0.5},
			rotation = {x=math.pi/2, y=0, z=math.pi/2},
			size = {x=10, y=10}
		},{
			texture = "building_lib_arrow.png",
			position = {x=-0.5, y=0.2, z=0.5},
			rotation = {x=math.pi/2, y=0, z=-math.pi/2},
			size = {x=10, y=10}
		},{
			texture = "building_lib_arrow.png",
			position = {x=0.5, y=0.2, z=1.5},
			rotation = {x=math.pi/2, y=0, z=math.pi},
			size = {x=10, y=10}
		},{
			texture = "building_lib_arrow.png",
			position = {x=0.5, y=0.2, z=-0.5},
			rotation = {x=math.pi/2, y=0, z=0},
			size = {x=10, y=10}
		}
	},
	on_metadata = on_streetsign_metadata,
	disable_orientation = disable_orientation
})

building_lib.register_building("city_buildings:street_t", {
	catalog = {
		filename = MP .. "/schematics/street.zip",
		offset = {x=3, y=0, z=0},
		size = {x=1, y=1, z=1}
	},
	markers = {
		{
			texture = "building_lib_arrow.png",
			position = {x=1.5, y=0.2, z=0.5},
			rotation = {x=math.pi/2, y=0, z=math.pi/2},
			size = {x=10, y=10}
		},{
			texture = "building_lib_arrow.png",
			position = {x=-0.5, y=0.2, z=0.5},
			rotation = {x=math.pi/2, y=0, z=-math.pi/2},
			size = {x=10, y=10}
		},{
			texture = "building_lib_arrow.png",
			position = {x=0.5, y=0.2, z=1.5},
			rotation = {x=math.pi/2, y=0, z=math.pi},
			size = {x=10, y=10}
		}
	},
	on_metadata = on_streetsign_metadata,
	disable_orientation = disable_orientation
})

building_lib.register_building("city_buildings:street_corner", {
	catalog = {
		filename = MP .. "/schematics/street.zip",
		offset = {x=4, y=0, z=0},
		size = {x=1, y=1, z=1}
	},
	markers = {
		{
			texture = "building_lib_arrow.png",
			position = {x=-0.5, y=0.2, z=0.5},
			rotation = {x=math.pi/2, y=0, z=-math.pi/2},
			size = {x=10, y=10}
		},{
			texture = "building_lib_arrow.png",
			position = {x=0.5, y=0.2, z=1.5},
			rotation = {x=math.pi/2, y=0, z=math.pi},
			size = {x=10, y=10}
		}
	},
	disable_orientation = disable_orientation
})