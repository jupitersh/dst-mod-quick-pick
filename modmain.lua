function pick(inst)
	if inst.components.pickable then
	inst.components.pickable.quickpick = true
	end
end

AddPrefabPostInit("sapling", pick)
AddPrefabPostInit("marsh_bush", pick)
AddPrefabPostInit("reeds", pick)
AddPrefabPostInit("grass", pick)
AddPrefabPostInit("berrybush2", pick)
AddPrefabPostInit("berrybush", pick)
AddPrefabPostInit("flower_cave", pick)
AddPrefabPostInit("flower_cave_double", pick)
AddPrefabPostInit("flower_cave_triple", pick)
AddPrefabPostInit("red_mushroom", pick)
AddPrefabPostInit("green_mushroom", pick)
AddPrefabPostInit("blue_mushroom", pick)
AddPrefabPostInit("cactus", pick)
AddPrefabPostInit("oasis_cactus", pick)
AddPrefabPostInit("lichen", pick)
AddPrefabPostInit("wormlight_plant", pick)
AddPrefabPostInit("rock_avocado_bush", pick)
AddPrefabPostInit("bullkelp_plant", pick)

--For the mod of Coffee
if GLOBAL.KnownModIndex:IsModEnabled("workshop-1463489316") then
	AddPrefabPostInit("coffeebush", pick)
end

--Quick pick from cookpots, dryers and farms
if GetModConfigData("quick_harvest") then
	AddStategraphPostInit("wilson", function(sg)
		local actionhandler = GLOBAL.ActionHandler(GLOBAL.ACTIONS.HARVEST, "doshortaction")
		sg.actionhandlers[GLOBAL.ACTIONS.HARVEST] = actionhandler
	end)
end