local funk = require("__mooncrete__.prototypes.functions")
local tints = funk.tints
local framewerx = funk.framewerx
local unlocker = funk.unlocker
local path = "__mooncrete__"

local tile = table.deepcopy(data.raw["tile"]["mooncrete"])
local item = table.deepcopy(data.raw["item"]["mooncrete"])
item.subgroup = mods["Dectorio"] and DECT.ENABLED["item-group"] and "flooring-basic" or nil

ElectricTilesDataInterface.modTilePrototypes({
    {tile = tile, item = item, others = { use_default_recipe = true}}
})

local tile = table.deepcopy(data.raw["tile"]["refined-mooncrete"])
local item = table.deepcopy(data.raw["item"]["refined-mooncrete"])
item.subgroup = mods["Dectorio"] and DECT.ENABLED["item-group"] and "flooring-basic" or nil

ElectricTilesDataInterface.modTilePrototypes({
    {tile = tile, item = item, others = { use_default_recipe = true}}
})

for _, refined in ipairs({false, true}) do
    local doohickey = refined and "refined-hazard-mooncrete" or "hazard-mooncrete"

    local left = table.deepcopy(data.raw["tile"][doohickey.."-left"])
    local right = table.deepcopy(data.raw["tile"][doohickey.."-right"])
    local item = table.deepcopy(data.raw["item"][doohickey])
    local recipe = {
        ingredients = {{type = "item", name = refined and "F077ET-refined-mooncrete" or "F077ET-mooncrete", amount = 15}}
    }
    item.subgroup = data.raw["item-subgroup"]["F077ET-terrain-dect-refined-hazards"] and (refined and "F077ET-terrain-dect-refined-hazards" or "F077ET-terrain-dect-hazards") or nil

    left.next_direction = "F077ET-"..doohickey.."-right"
    right.next_direction = "F077ET-"..doohickey.."-left"
    right.placeable_by = {item = "F077ET-"..doohickey, count = 1}
    right.minable.result = "F077ET-"..doohickey

    ElectricTilesDataInterface.modTilePrototypes({
        {tile = left, item = item, recipe = recipe, others = {result_amount = 15}},
        {tile = right}
    })
end

ElectricTilesDataInterface.modTilePrototypes({
    {tile = tile, item = item, recipe = recipe, others = {result_amount = 15}}
})

if mods["Dectorio"] and DECT.ENABLED["concrete"] and settings.startup["DDgrid-variant"].value and settings.startup["DDelectric-grids"].value then
    local tile = table.deepcopy(data.raw["tile"]["dect-concrete-grid"])
    local item = table.deepcopy(data.raw["item"]["dect-concrete-grid"])
    item.subgroup = DECT.ENABLED["item-group"] and "flooring-basic" or nil

ElectricTilesDataInterface.modTilePrototypes({
    {tile = tile, item = item, others = {use_default_recipe = true}}
})
    local tile = table.deepcopy(data.raw["tile"]["mooncrete-grid"])
    local item = table.deepcopy(data.raw["item"]["mooncrete-grid"])
    item.subgroup = DECT.ENABLED["item-group"] and "flooring-basic" or nil

ElectricTilesDataInterface.modTilePrototypes({
    {tile = tile, item = item, others = {use_default_recipe = true}}
})
end

if mods["Dectorio"] and DECT.ENABLED["painted-concrete"] and settings.startup["DDpainted-variants"].value and settings.startup["DDelectric-painted-variants"].value then
    for _, colorize in pairs(tints) do
        local tile = table.deepcopy(data.raw["tile"][colorize.name.."-refined-mooncrete"])
        local item = table.deepcopy(data.raw["item"]["dect-"..colorize.name.."-refined-mooncrete"])
        local recipe = {
            ingredients = {{ type = "item", name = "F077ET-refined-mooncrete", amount = 15}}
        }
        item.subgroup = DECT.ENABLED["item-group"] and "F077ET-terrain-dect-colored" or nil

ElectricTilesDataInterface.modTilePrototypes({
    {tile = tile, item = item, recipe = recipe, others = {result_amount = 15}}
})
    for _, candystriper in ipairs({"emergency", "radiation", "safety", "caution", "danger", "defect", "operations"}) do
        for _, refined in ipairs({false, true}) do
        local thingamajig = (refined and "dect-paint-refined-" or "dect-paint-")..candystriper.."-mooncrete"

        local left = table.deepcopy(data.raw["tile"][thingamajig.."-left"])
        local right = table.deepcopy(data.raw["tile"][thingamajig.."-right"])
        local item = table.deepcopy(data.raw["item"][thingamajig])
        local recipe ={
            ingredients = {{type = "item", name = refined and "F077ET-refined-mooncrete" or "F077ET-mooncrete", amount = 15}}
        }
        item.subgroup = DECT.ENABLED["item-group"] and (refined and "F077ET-terrain-dect-refined-hazards" or "F077ET-terrain-dect-hazards") or nil

        left.next_direction = "F077ET-"..thingamajig.."-right"
        right.next_direction = "F077ET-"..thingamajig.."-left"
        right.placeable_by = {item = "F077ET-"..thingamajig, count = 1}
        right.minable.result = "F077ET-"..thingamajig

ElectricTilesDataInterface.modTilePrototypes({
    {tile = left, item = item, recipe = recipe, others = {result_amount = 15}},
    {tile = right}
})
            end
        end
    end
end

local upgradio = {
    type = "recipe",
    name = "F077ET-mooncrete-to-F077ET-refined-mooncrete",
    enabled = false,
    category = "crafting-with-fluid",
    energy_required = 13,
    auto_recycle = false,
    subgroup = data.raw["item-subgroup"]["flooring-basic"] and "flooring-basic" or nil,
    icon = path.."/graphics/electric-tiles/refined-mooncrete-upgrade.png",
    icon_size = 64,
    ingredients =
    {
        {type = "item", name = "F077ET-mooncrete", amount = 15},
        {type = "item", name = "silicon", amount = 2},
        {type = "fluid", name = "steam", amount = 50},
        {type = "item", name = "alumina-crushed", amount = 5}
    },
    results = {{type = "item", name = "F077ET-refined-mooncrete", amount = 15}}
}
data:extend({upgradio})
unlocker("F077ET-refined-concrete", "F077ET-mooncrete-to-F077ET-refined-mooncrete")

if mods["Dectorio"] and DECT.ENABLED["item-group"] then
    local stone = data.raw["recipe"]["F077ET-stone-brick"]
    stone.subgroup = "flooring-basic"
    local concrete = data.raw["recipe"]["F077ET-concrete"]
    concrete.subgroup = "flooring-basic"
    local refined = data.raw["recipe"]["F077ET-refined-concrete"]
    refined.subgroup = "flooring-basic"
    local hazard = data.raw["recipe"]["F077ET-hazard-concrete"]
    hazard.subgroup = "flooring-basic"
    local hazref = data.raw["recipe"]["F077ET-refined-hazard-concrete"]
    hazref.subgroup = "flooring-basic"
    local upgrade = data.raw["recipe"]["F077ET-stone-brick-to-F077ET-concrete"]
    upgrade.subgroup = "flooring-basic"
    local upgrade2 = data.raw["recipe"]["F077ET-concrete-to-F077ET-refined-concrete"]
    upgrade2.subgroup = "flooring-basic"
end

if mods["Dectorio"] and not DECT.CONFIG.SETTINGS["vanilla_hazard_concrete"] then
    local newcrete_left = data.raw["tile"]["F077ET-hazard-mooncrete-left"]
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
    local newcrete_right = data.raw["tile"]["F077ET-hazard-mooncrete-right"]
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
    local newcrete_item = data.raw["item"]["F077ET-hazard-mooncrete"]
    newcrete_item.icon = path.."/graphics/electric-tiles/paint-hazard.png"
    local newcrete_recipe = data.raw["recipe"]["F077ET-hazard-mooncrete"]
    newcrete_recipe.icon = path.."/graphics/electric-tiles/paint-hazard.png"
    local newref_right = data.raw["tile"]["F077ET-refined-hazard-mooncrete-right"]
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
    local newref_left = data.raw["tile"]["F077ET-refined-hazard-mooncrete-left"]
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
    local newref_item = data.raw["item"]["F077ET-refined-hazard-mooncrete"]
    newref_item.icon = path.."/graphics/electric-tiles/paint-hazard-refined.png"
    local newref_recipe = data.raw["recipe"]["F077ET-refined-hazard-mooncrete"]
    newref_recipe.icon = path.."/graphics/electric-tiles/paint-hazard-refined.png"
end