local path = "__mooncrete__"

local funk = require("__mooncrete__.prototypes.functions")
local framewerx = funk.framewerx
local tints = funk.tints
local refinedbase = funk.refinedbase
local unlocker = funk.unlocker

local moonwalk = settings.startup["mooncrete-speedwalker"].value
local moondrive = settings.startup["mooncrete-speedracer"].value
local powerwalk = settings.startup["refined-speedwalker"].value
local powerdrive = settings.startup["refined-speedracer"].value
local stankyleg = settings.startup["gravel-speedwalker"].value
local stankycar = settings.startup["gravel-speedracer"].value

if DECT.ENABLED["gravel"] and settings.startup["DDgravel-variants"].value then
local iron = table.deepcopy(data.raw["item"]["dect-iron-ore-gravel"])
   iron.name = "dect-iron-ore-gravel-muluna"
   iron.icons = nil
   iron.icon = path.."/graphics/Dectorio/icons/iron-gravel.png"
   iron.localised_name = "Iron gravel (Muluna)"
   iron.place_as_tile.result = "dect-iron-ore-gravel-muluna"
   iron.subgroup = data.raw["item-subgroup"]["flooring-basic"] and "flooring-basic" or nil

local irontile = table.deepcopy(data.raw["tile"]["dect-iron-ore-gravel"])
    irontile.name = "dect-iron-ore-gravel-muluna"
    irontile.localised_name = "Iron gravel (Muluna)"
    irontile.vehicle_friction_modifier = stankycar
    irontile.walking_speed_modifier = stankyleg
    irontile.minable.result = "dect-iron-ore-gravel-muluna"

local ironrecipe = table.deepcopy(data.raw["recipe"]["dect-iron-ore-gravel"])
    ironrecipe.name = "dect-iron-ore-gravel-muluna"
    if mods["crushing-industry"] then
        ironrecipe.category = "basic-crushing" else
        ironrecipe.category = "crushing"
    end
    ironrecipe.localised_name = "Iron gravel (Muluna)"
    ironrecipe.results[1].name = "dect-iron-ore-gravel-muluna"
    ironrecipe.icon = path.."/graphics/Dectorio/icons/iron-gravel.png"

local copper = table.deepcopy(data.raw["item"]["dect-copper-ore-gravel"])
    copper.name = "dect-copper-ore-gravel-muluna"
    copper.icons = nil
    copper.icon = path.."/graphics/Dectorio/icons/copper-gravel.png"
    copper.localised_name = "Copper gravel (Muluna)"
    copper.place_as_tile.result = "dect-copper-ore-gravel-muluna"
    copper.subgroup = data.raw["item-subgroup"]["flooring-basic"] and "flooring-basic" or nil

local coppertile = table.deepcopy(data.raw["tile"]["dect-copper-ore-gravel"])
    coppertile.name = "dect-copper-ore-gravel-muluna"
    coppertile.localised_name = "Copper gravel (Muluna)"
    coppertile.vehicle_friction_modifier = stankycar
    coppertile.walking_speed_modifier = stankyleg
    coppertile.minable.result = "dect-copper-ore-gravel-muluna"

local copperrecipe = table.deepcopy(data.raw["recipe"]["dect-copper-ore-gravel"])
    copperrecipe.name = "dect-copper-ore-gravel-muluna"
    if mods["crushing-industry"] then
        copperrecipe.category = "basic-crushing" else
        copperrecipe.category = "crushing"
    end
    copperrecipe.localised_name = "Copper gravel (Muluna)"
    copperrecipe.results[1].name = "dect-copper-ore-gravel-muluna"
    copperrecipe.icon = path.."/graphics/Dectorio/icons/copper-gravel.png"

local coal = table.deepcopy(data.raw["item"]["dect-coal-gravel"])
    coal.name = "dect-coal-gravel-muluna"
    coal.localised_name = "Coal gravel (Muluna)"
    coal.place_as_tile.result = "dect-coal-gravel-muluna"
    coal.icons = nil
    coal.icon = path.."/graphics/Dectorio/icons/coal-gravel.png"
    coal.subgroup = data.raw["item-subgroup"]["flooring-basic"] and "flooring-basic" or nil

local coaltile = table.deepcopy(data.raw["tile"]["dect-coal-gravel"])
    coaltile.name = "dect-coal-gravel-muluna"
    coaltile.localised_name = "Coal gravel (Muluna)"
    coaltile.vehicle_friction_modifier = stankycar
    coaltile.walking_speed_modifier = stankyleg
    coaltile.minable.result = "dect-coal-gravel-muluna"

local coalrecipe = table.deepcopy(data.raw["recipe"]["dect-coal-gravel"])
    coalrecipe.name = "dect-coal-gravel-muluna"
    if mods["crushing-industry"] then
        coalrecipe.category = "basic-crushing" else
        coalrecipe.category = "crushing"
    end
    coalrecipe.localised_name = "Coal gravel (Muluna)"
    coalrecipe.results[1].name = "dect-coal-gravel-muluna"
    coalrecipe.icon = path.."/graphics/Dectorio/icons/coal-gravel.png"

local stone = table.deepcopy(data.raw["item"]["dect-stone-gravel"])
    stone.name = "dect-stone-gravel-muluna"
    stone.localised_name = "Stone gravel (Muluna)"
    stone.place_as_tile.result = "dect-stone-gravel-muluna"
    stone.icons = nil
    stone.icon = path.."/graphics/Dectorio/icons/stone-gravel.png"
    stone.subgroup = data.raw["item-subgroup"]["flooring-basic"] and "flooring-basic" or nil

local stonetile = table.deepcopy(data.raw["tile"]["dect-stone-gravel"])
    stonetile.name = "dect-stone-gravel-muluna"
    stonetile.localised_name = "Stone gravel (Muluna)"
    stonetile.vehicle_friction_modifier = stankycar
    stonetile.walking_speed_modifier = stankyleg
    stonetile.minable.result = "dect-stone-gravel-muluna"

local stonerecipe = table.deepcopy(data.raw["recipe"]["dect-stone-gravel"])
    stonerecipe.name = "dect-stone-gravel-muluna"
    if mods["crushing-industry"] then
        stonerecipe.category = "basic-crushing" else
        stonerecipe.category = "crushing"
    end
    stonerecipe.localised_name = "Stone gravel (Muluna)"
    stonerecipe.results[1].name = "dect-stone-gravel-muluna"
    stonerecipe.icon = path.."/graphics/Dectorio/icons/stone-gravel.png"
    data:extend({iron, irontile, ironrecipe, copper, coppertile, copperrecipe, coal, coaltile, coalrecipe, stone, stonetile, stonerecipe})
end

if DECT.ENABLED["gravel"] and settings.startup["DDextra-gravel"].value then

local tincan = table.deepcopy(data.raw["item"]["dect-iron-ore-gravel"])
    tincan.name = "dect-alumina-gravel"
    tincan.localised_name = "Alumina gravel"
    tincan.place_as_tile.result = "dect-alumina-gravel"
    tincan.place_as_tile.condition = {layers = {water_tile = true, ["muluna-no-paving"] = true}}
    tincan.icons = nil
    tincan.icon = path.."/graphics/Dectorio/icons/alumina-gravel.png"
    tincan.subgroup = data.raw["item-subgroup"]["flooring-basic"] and "flooring-basic" or nil

local tincan_recipe = {
        type = "recipe",
        name = "dect-alumina-gravel",
        icon = path.."/graphics/Dectorio/icons/alumina-gravel.png",
        energy_required = 0.1,
        enabled = true,
        category = "crafting",
        ingredients =
        {
            {type = "item", name = "alumina-crushed", amount = 1}
        },
        results = {{type = "item", name = "dect-alumina-gravel", amount = 1}}
    }

local tincan_tile = table.deepcopy(data.raw["tile"]["dect-iron-ore-gravel"])
    tincan_tile.name = "dect-alumina-gravel"
    tincan_tile.localised_name = "Alumina gravel"
    tincan_tile.minable.result = "dect-alumina-gravel"
    tincan_tile.variants = {
		main = {
			{
				picture = path.."/graphics/Dectorio/terrain/alumina/alumina1.png",
				count = 16,
				size = 1
			},
			{
				picture = path.."/graphics/Dectorio/terrain/alumina/alumina2.png",
				count = 4,
				size = 2,
				probability = 0.39
			},
			{
				picture = path.."/graphics/Dectorio/terrain/alumina/alumina4.png",
				count = 4,
				size = 4,
				probability = 1
			}
		},
		transition =
			{
				overlay_layout =
					{
					inner_corner = {
						spritesheet = path.."/graphics/Dectorio/terrain/alumina/alumina-inner-corner.png",
						count = 8
					},
					outer_corner = {
						spritesheet = path.."/graphics/Dectorio/terrain/alumina/alumina-outer-corner.png",
						count = 1
					},
					side = {
						spritesheet = path.."/graphics/Dectorio/terrain/alumina/alumina-side.png",
						count = 8
					},
					u_transition = {
						spritesheet = path.."/graphics/Dectorio/terrain/alumina/alumina-u.png",
						count = 8
					},
					o_transition = {
						spritesheet = path.."/graphics/Dectorio/terrain/alumina/alumina-o.png",
						count = 1
					}
				}
			}
	}
data:extend({tincan, tincan_recipe, tincan_tile})
end

if DECT.ENABLED["gravel"] and settings.startup["DDextra-gravel"].value and settings.startup["DDgravel-variants"].value then

local moonrock = table.deepcopy(data.raw["item"]["dect-iron-ore-gravel"])
    moonrock.name = "dect-regolith-gravel"
    moonrock.localised_name = "Regolith gravel"
    moonrock.place_as_tile.result = "dect-regolith-gravel"
    moonrock.icons = nil
    moonrock.icon = path.."/graphics/Dectorio/icons/regolith-gravel.png"
    moonrock.subgroup = data.raw["item-subgroup"]["flooring-basic"] and "flooring-basic" or nil

local moonrock_recipe = {
        type = "recipe",
        name = "dect-regolith-gravel",
        icon = path.."/graphics/Dectorio/icons/regolith-gravel.png",
        energy_required = 0.1,
        enabled = true,
        category = data.raw["recipe-category"]["basic-crushing"] and "basic-crushing" or "crushing",
        ingredients =
        {
            {type = "item", name = "muluna-lunar-regolith", amount = 1}
        },
        results = {{type = "item", name = "dect-regolith-gravel", amount = 1}}
    }

local moonrock_tile = table.deepcopy(data.raw["tile"]["muluna-gravel"])
    moonrock_tile.name = "dect-regolith-gravel"
    moonrock_tile.localised_name = "Regolith gravel"
    moonrock_tile.minable.result = "dect-regolith-gravel"
    moonrock_tile.vehicle_friction_modifier = stankycar
    moonrock_tile.walking_speed_modifier = stankyleg

local tincan = table.deepcopy(data.raw["item"]["dect-iron-ore-gravel"])
    tincan.name = "dect-alumina-gravel-muluna"
    tincan.localised_name = "Alumina gravel (Muluna)"
    tincan.place_as_tile.result = "dect-alumina-gravel-muluna"
    tincan.icons = nil
    tincan.icon = path.."/graphics/Dectorio/icons/alumina-gravel_muluna.png"
    tincan.subgroup = data.raw["item-subgroup"]["flooring-basic"] and "flooring-basic" or nil

local tincan_recipe = {
        type = "recipe",
        name = "dect-alumina-gravel-muluna",
        icon = path.."/graphics/Dectorio/icons/alumina-gravel_muluna.png",
        energy_required = 0.1,
        enabled = true,
        category = data.raw["recipe-category"]["basic-crushing"] and "basic-crushing" or "crushing",
        ingredients =
        {
            {type = "item", name = "alumina-crushed", amount = 1}
        },
        results = {{type = "item", name = "dect-alumina-gravel-muluna", amount = 1}}
    }

local tincan_tile = table.deepcopy(data.raw["tile"]["dect-iron-ore-gravel"])
    tincan_tile.name = "dect-alumina-gravel-muluna"
    tincan_tile.localised_name = "Alumina gravel (Muluna)"
    tincan_tile.minable.result = "dect-alumina-gravel-muluna"
    tincan_tile.vehicle_friction_modifier = stankycar
    tincan_tile.walking_speed_modifier = stankyleg
    tincan_tile.variants = {
		main = {
			{
				picture = path.."/graphics/Dectorio/terrain/alumina/alumina1.png",
				count = 16,
				size = 1
			},
			{
				picture = path.."/graphics/Dectorio/terrain/alumina/alumina2.png",
				count = 4,
				size = 2,
				probability = 0.39
			},
			{
				picture = path.."/graphics/Dectorio/terrain/alumina/alumina4.png",
				count = 4,
				size = 4,
				probability = 1
			}
		},
		transition =
			{
				overlay_layout =
					{
					inner_corner = {
						spritesheet = path.."/graphics/Dectorio/terrain/alumina/alumina-inner-corner.png",
						count = 8
					},
					outer_corner = {
						spritesheet = path.."/graphics/Dectorio/terrain/alumina/alumina-outer-corner.png",
						count = 1
					},
					side = {
						spritesheet = path.."/graphics/Dectorio/terrain/alumina/alumina-side.png",
						count = 8
					},
					u_transition = {
						spritesheet = path.."/graphics/Dectorio/terrain/alumina/alumina-u.png",
						count = 8
					},
					o_transition = {
						spritesheet = path.."/graphics/Dectorio/terrain/alumina/alumina-o.png",
						count = 1
					}
				}
			}
	}
data:extend({moonrock, moonrock_recipe, moonrock_tile, tincan, tincan_recipe, tincan_tile})
end



if DECT.ENABLED["wood-floor"] and settings.startup["DDwoodfloor-variant"].value then
local wood = table.deepcopy(data.raw["item"]["dect-wood-floor"])
    wood.name = "dect-wood-floor-muluna"
    wood.icon = path.."/graphics/Dectorio/icons/wood-floor.png"
    wood.localised_name = "Wooden floorboards (Muluna)"
    wood.place_as_tile.result = "dect-wood-floor-muluna"
    wood.subgroup = data.raw["item-subgroup"]["flooring-basic"] and "flooring-basic" or nil

local woodtile = table.deepcopy(data.raw["tile"]["dect-wood-floor"])
    woodtile.name = "dect-wood-floor-muluna"
    woodtile.localised_name = "Wooden floorboards (Muluna)"
    woodtile.vehicle_friction_modifier = stankycar
    woodtile.walking_speed_modifier = stankyleg
    woodtile.minable.result = "dect-wood-floor-muluna"

local woodrecipe = table.deepcopy(data.raw["recipe"]["dect-wood-floor"])
    woodrecipe.name = "dect-wood-floor-muluna"
    woodrecipe.localised_name = "Wooden floorboards (Muluna)"
    woodrecipe.results[1].name = "dect-wood-floor-muluna"
    woodrecipe.icon = path.."/graphics/Dectorio/icons/wood-floor.png"
    data:extend({wood, woodtile, woodrecipe})
    unlocker("dect-wood-floor", "dect-wood-floor-muluna")
end

if DECT.ENABLED["concrete"] and settings.startup["DDgrid-variant"].value then

local grid = table.deepcopy(data.raw["item"]["dect-concrete-grid"])
    grid.name = "mooncrete-grid"
    grid.icon = path.."/graphics/Dectorio/icons/mooncrete-grid.png"
    grid.localised_name = "Mooncrete grid"
    grid.place_as_tile.result = "mooncrete-grid"
    grid.subgroup = data.raw["item-subgroup"]["flooring-basic"] and "flooring-basic" or nil

local gridtile = table.deepcopy(data.raw["tile"]["dect-concrete-grid"])
    gridtile.name = "mooncrete-grid"
    gridtile.vehicle_friction_modifier = moondrive
    gridtile.walking_speed_modifier = moonwalk
    gridtile.minable.result = "mooncrete-grid"
    gridtile.transition_merges_with_tile = "mooncrete"
    gridtile.variants =
    {
        transition = framewerx,
        material_background =
        {
            picture = path.."/graphics/Dectorio/mooncrete/grid/mooncrete-grid.png",
            count = 8,
            scale = 1
        }
    }
    gridtile.map_color = {163, 158, 153}

local gridrecipe = table.deepcopy(data.raw["recipe"]["dect-concrete-grid"])
    gridrecipe.name = "mooncrete-grid"
    gridrecipe.icon = path.."/graphics/Dectorio/icons/mooncrete-grid.png"
    gridrecipe.ingredients = 
    {
        {type = "item", name = "muluna-lunar-regolith", amount = 5},
        {type = "item", name = "stone-crushed", amount = 5},
        {type = "item", name = "sulfur", amount = 2},
        {type = "fluid", name = "steam", amount = 50}
    }
    gridrecipe.results[1].name = "mooncrete-grid"
    data:extend({grid, gridtile, gridrecipe})
    unlocker("dect-concrete-grid", "mooncrete-grid")

end

if DECT.ENABLED["painted-concrete"] and settings.startup["DDpainted-variants"].value then

    for _, colorize in pairs(tints) do
        local oldschool = "dect-"..colorize.name.."-refined-concrete"
        local newschool = "dect-"..colorize.name.."-refined-mooncrete"
        local localise = {"", {"color."..colorize.name}, " refined mooncrete"}

        local tile = table.deepcopy(data.raw["tile"][colorize.name.."-refined-concrete"])
        tile.name = colorize.name.."-refined-mooncrete"
        tile.localised_name = localise
        tile.transition_merges_with_tile = "refined-mooncrete"
        tile.walking_speed_modifier = powerwalk
        tile.vehicle_friction_modifier = powerdrive
        tile.minable.result = newschool
        tile.tint = colorize.tint
        tile.variants =
        {
            transition = framewerx,
            material_background = refinedbase
        }

        local item = table.deepcopy(data.raw["item"][oldschool])
        item.name = newschool
        item.localised_name = localise
        item.icons = {{icon = path.."/graphics/refined-mooncrete_icon.png", icon_size = 64, tint = colorize.tint}}
        item.place_as_tile.result = tile.name
        item.place_as_tile.condition.layers["muluna-no-paving"] = nil

        local recipe = table.deepcopy(data.raw["recipe"][oldschool])
        recipe.name = newschool
        recipe.localised_name = localise
        recipe.icons = {{icon = path.."/graphics/refined-mooncrete_icon.png", icon_size = 64, tint = colorize.tint}}
        recipe.results[1].name = newschool
        recipe.results[1].amount = 15
        recipe.ingredients = {{type = "item", name = "refined-mooncrete", amount = 15}}

        data:extend({tile, item, recipe})
        unlocker (oldschool, newschool)
    end

    for _, candystriper in ipairs({"emergency", "radiation", "safety", "caution", "danger", "defect", "operations"}) do
        for _, refined in ipairs({false, true}) do
            local set = refined and "refined-mooncrete" or "mooncrete"
            local oldschool = (refined and "dect-paint-refined-" or "dect-paint-")..candystriper
            local newschool = oldschool .. "-mooncrete"
            local gibber = candystriper:sub(1, 1):upper()..candystriper:sub(2)
            local localise = refined and ("Refined "..gibber:lower().." mooncrete") or (gibber.." mooncrete")

            for _, side in ipairs({"left", "right"}) do
                local sinestro = (side == "left") and "right" or "left"

                local tile = table.deepcopy(data.raw["tile"][oldschool.."-"..side])
                tile.name = newschool.."-"..side
                tile.localised_name = localise
                tile.next_direction = newschool.."-"..sinestro
                tile.transition_merges_with_tile = set
                tile.walking_speed_modifier = refined and powerwalk or moonwalk
                tile.vehicle_friction_modifier = refined and powerdrive or moondrive
                tile.minable.result = newschool
                tile.variants =
                {
                    transition = framewerx,
                    material_background =
                   {
                    picture = path.."/graphics/Dectorio/"..set.."/"..candystriper.."-"..side.."/"..set..".png",
                    count = 8,
                    scale = 1
                    }
                }
                data:extend({tile})
            end
            local item = table.deepcopy(data.raw["item"][oldschool])
            item.name = newschool
            item.localised_name = localise
            item.icons = nil
            item.icon = path.."/graphics/Dectorio/icons/paint-"..candystriper..(refined and "-refined" or "")..".png"
            item.icon_size = 64
            item.place_as_tile.result = newschool.."-left"
            item.place_as_tile.condition.layers["muluna-no-paving"]=nil

            local recipe = table.deepcopy(data.raw["recipe"][oldschool])
            recipe.name = newschool
            recipe.localised_name = localise
            recipe.icons = nil
            recipe.icon = path.."/graphics/Dectorio/icons/paint-"..candystriper..(refined and "-refined" or "")..".png"
            recipe.icon_size = 64
            recipe.results[1].name = newschool
            recipe.results[1].amount = 15
            recipe.ingredients = {{type = "item", name = set, amount = 15}}
            data:extend({item, recipe})
            unlocker(oldschool, newschool)
        end
    end
end

if not DECT.CONFIG.SETTINGS["vanilla_hazard_concrete"] then
    local newcrete_left = data.raw["tile"]["hazard-mooncrete-left"]
    newcrete_left.variants =
    {
        transition = framewerx,
        material_background =
        {
            picture = path.."/graphics/Dectorio/mooncrete/hazard-left/mooncrete.png",
            count = 8,
            scale = 1
        }
    }
    local newcrete_right = data.raw["tile"]["hazard-mooncrete-right"]
    newcrete_right.variants =
    {
        transition = framewerx,
        material_background =
        {
            picture = path.."/graphics/Dectorio/mooncrete/hazard-right/mooncrete.png",
            count = 8,
            scale = 1
        }
    }
    local newcrete_item = data.raw["item"]["hazard-mooncrete"]
    newcrete_item.icons = nil
    newcrete_item.icon = path.."/graphics/Dectorio/icons/paint-hazard.png"
    local newcrete_recipe = data.raw["recipe"]["hazard-mooncrete"]
    newcrete_recipe.icons = nil
    newcrete_recipe.icon = path.."/graphics/Dectorio/icons/paint-hazard.png"
    local newref_right = data.raw["tile"]["refined-hazard-mooncrete-right"]
    newref_right.variants =
    {
        transition = framewerx,
        material_background =
        {
            picture = path.."/graphics/Dectorio/refined-mooncrete/hazard-right/refined-mooncrete.png",
            count = 8,
            scale = 1
        }
    }
    local newref_left = data.raw["tile"]["refined-hazard-mooncrete-left"]
    newref_left.variants =
    {
        transition = framewerx,
        material_background =
        {
            picture = path.."/graphics/Dectorio/refined-mooncrete/hazard-left/refined-mooncrete.png",
            count = 8,
            scale = 1
        }
    }
    local newref_item = data.raw["item"]["refined-hazard-mooncrete"]
    newref_item.icons = nil
    newref_item.icon = path.."/graphics/Dectorio/icons/paint-hazard-refined.png"
    local newref_recipe = data.raw["recipe"]["refined-hazard-mooncrete"]
    newref_recipe.icons = nil
    newref_recipe.icon = path.."/graphics/Dectorio/icons/paint-hazard-refined.png"
end

if mods["crushing-industry"] and DECT.ENABLED["gravel"] then
    data.raw["recipe"]["dect-stone-gravel"].category = "basic-crushing"
    data.raw["recipe"]["dect-iron-ore-gravel"].category = "basic-crushing"
    data.raw["recipe"]["dect-copper-ore-gravel"].category = "basic-crushing"
    data.raw["recipe"]["dect-coal-gravel"].category = "basic-crushing"
end
if mods["crushing-industry"] and DECT.ENABLED["gravel"] and settings.startup["DDextra-gravel"].value then
    data.raw["recipe"]["dect-alumina-gravel"].category = "basic-crushing"
end