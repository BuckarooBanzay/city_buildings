local MP = minetest.get_modpath("city_buildings")

local r = {
	"building1",
	"building1_1",
	"building2",
	"building2_1",
	"building2_2",
	"building2_3",
	"building3",
	"building3_1",
	"park_3x3",
	"park_4x4",
	"park_5x5"
}

for _, name in pairs(r) do
	building_lib.register_building("city_buildings:" .. name, {
		catalog = MP .. "/schematics/" .. name .. ".zip",
		ground_conditions = {
			on_group = "flat_surface"
		},
		overview = "default:stone"
	})
end