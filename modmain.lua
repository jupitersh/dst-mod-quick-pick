local quick_pick_list = {
    "sapling",
    "marsh_bush",
    "reeds",
    "grass",
    "berrybush2",
    "berrybush",
    "flower_cave",
    "flower_cave_double",
    "flower_cave_triple",
    "red_mushroom",
    "green_mushroom",
    "blue_mushroom",
    "cactus",
    "oasis_cactus",
    "lichen",
    "wormlight_plant",
    "rock_avocado_bush",
    "bullkelp_plant",
}

--For the mod of Coffee
if GLOBAL.KnownModIndex:IsModEnabled("workshop-1463489316") then
    table.insert(quick_pick_list,"coffeebush")
end

for k,v in pairs(quick_pick_list) do
    AddPrefabPostInit(v, function(inst)
        if inst.components.pickable then
            inst.components.pickable.quickpick = true
        end
    end)
end

--Quick pick from cookpots, dryers and farms
if GetModConfigData("quick_harvest") then
	AddStategraphPostInit("wilson", function(sg)
		local actionhandler = GLOBAL.ActionHandler(GLOBAL.ACTIONS.HARVEST, "doshortaction")
		sg.actionhandlers[GLOBAL.ACTIONS.HARVEST] = actionhandler
	end)
end
