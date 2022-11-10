local MP = minetest.get_modpath("city_buildings")

city_buildings = {}

dofile(MP .. "/util/streetname.lua")
dofile(MP .. "/streets.lua")
dofile(MP .. "/strut.lua")
dofile(MP .. "/buildings.lua")
dofile(MP .. "/terrain.lua")

if minetest.get_mapgen_setting("mg_name") == "singlenode" then
    -- register mapgen
    dofile(MP .. "/mapgen.lua")
end