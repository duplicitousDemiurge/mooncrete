require("__mooncrete__.prototypes.recipe")
require("__mooncrete__.prototypes.technologies")

local funk = require("__mooncrete__.prototypes.functions")
local framewerx = funk.framewerx
local matthazard = funk.matthazard
local moonbase = funk.moonbase
local refinedbase = funk.refinedbase

local moonwalk = settings.startup["mooncrete-speedwalker"].value
local moondrive = settings.startup["mooncrete-speedracer"].value
local powerwalk = settings.startup["refined-speedwalker"].value
local powerdrive = settings.startup["refined-speedracer"].value

if mods["planet-muluna"] then
    local nightman = table.deepcopy(data.raw["tile"]["concrete"])
    nightman.name = "mooncrete"
    nightman.minable.result = "mooncrete"
    nightman.walking_speed_modifier = moonwalk
    nightman.vehicle_friction_modifier = moondrive
    nightman.variants =
    {
      transition = framewerx,
      material_background = moonbase
    }
    nightman.map_color = {163, 158, 153}
    data:extend({nightman})

    local dayman = table.deepcopy(data.raw["tile"]["refined-concrete"])
    dayman.name = "refined-mooncrete"
    dayman.minable.result = "refined-mooncrete"
    dayman.walking_speed_modifier = powerwalk
    dayman.vehicle_friction_modifier = powerdrive
    dayman.variants =
    {
      transition = framewerx,
      material_background = refinedbase
    }
    dayman.map_color = {138, 134, 129}
    data:extend({dayman})

    local actionman_left = table.deepcopy(data.raw["tile"]["hazard-concrete-left"])
    actionman_left.name = "hazard-mooncrete-left"
    actionman_left.minable.result = "hazard-mooncrete"
    actionman_left.next_direction = "hazard-mooncrete-right"
    actionman_left.transition_merges_with_tile = "mooncrete"
    actionman_left.walking_speed_modifier = powerwalk
    actionman_left.vehicle_friction_modifier = powerdrive
    actionman_left.variants =
    {
      transition = matthazard,
      material_background =
      {
        picture = "__mooncrete__/graphics/hazard-mooncrete-left.png",
        count = 8,
        scale = 0.5
      }
    }
    data:extend({actionman_left})

    local actionman_right = table.deepcopy(data.raw["tile"]["hazard-concrete-right"])
    actionman_right.name = "hazard-mooncrete-right"
    actionman_right.minable.result = "hazard-mooncrete"
    actionman_right.next_direction = "hazard-mooncrete-left"
    actionman_right.transition_merges_with_tile = "mooncrete"
    actionman_right.walking_speed_modifier = powerwalk
    actionman_right.vehicle_friction_modifier = powerdrive
    actionman_right.variants =
    {
      transition = matthazard,
      material_background =
      {
        picture = "__mooncrete__/graphics/hazard-mooncrete-right.png",
        count = 8,
        scale = 0.5
      }
    }
    data:extend({actionman_right})

    local machoman_left = table.deepcopy(data.raw["tile"]["refined-hazard-concrete-left"])
    machoman_left.name = "refined-hazard-mooncrete-left"
    machoman_left.minable.result = "refined-hazard-mooncrete"
    machoman_left.next_direction = "refined-hazard-mooncrete-right"
    machoman_left.transition_merges_with_tile = "mooncrete"
    machoman_left.walking_speed_modifier = powerwalk
    machoman_left.vehicle_friction_modifier = powerdrive
    machoman_left.variants =
    {
      transition = matthazard,
      material_background =
      {
        picture = "__mooncrete__/graphics/refined-hazard-mooncrete-left.png",
        count = 8,
        scale = 0.5
      }
    }
    data:extend({machoman_left})

    local machoman_right = table.deepcopy(data.raw["tile"]["refined-hazard-concrete-right"])
    machoman_right.name = "refined-hazard-mooncrete-right"
    machoman_right.minable.result = "refined-hazard-mooncrete"
    machoman_right.next_direction = "refined-hazard-mooncrete-left"
    machoman_right.transition_merges_with_tile = "mooncrete"
    machoman_right.walking_speed_modifier = powerwalk
    machoman_right.vehicle_friction_modifier = powerdrive
    machoman_right.variants =
    {
      transition = matthazard,
      material_background =
      {
        picture = "__mooncrete__/graphics/refined-hazard-mooncrete-right.png",
        count = 8,
        scale = 0.5
      }
    }
    data:extend({machoman_right})

    local nightman_item = table.deepcopy(data.raw["item"]["concrete"])
    nightman_item.name = "mooncrete"
    nightman_item.icon = "__mooncrete__/graphics/mooncrete_icon.png"
    nightman_item.place_as_tile =
    {
        result = "mooncrete",
        condition_size = 1,
        condition = {layers={water_tile=true}}
    }
    data:extend({nightman_item})

    local dayman_item = table.deepcopy(data.raw["item"]["refined-concrete"])
    dayman_item.name = "refined-mooncrete"
    dayman_item.icon = "__mooncrete__/graphics/refined-mooncrete_icon.png"
    dayman_item.place_as_tile =
    {
        result = "refined-mooncrete",
        condition_size = 1,
        condition = {layers={water_tile=true}}
    }
    data:extend({dayman_item})

    local actionman_item = table.deepcopy(data.raw["item"]["hazard-concrete"])
    actionman_item.name = "hazard-mooncrete"
    actionman_item.icon = "__mooncrete__/graphics/hazard-mooncrete_icon.png"
    actionman_item.place_as_tile =
    {
      result = "hazard-mooncrete-left",
      condition_size = 1,
      condition = {layers = {water_tile=true}}
    }
    data:extend({actionman_item})

    local machoman_item = table.deepcopy(data.raw["item"]["refined-hazard-concrete"])
    machoman_item.name = "refined-hazard-mooncrete"
    machoman_item.icon = "__mooncrete__/graphics/refined-hazard-mooncrete_icon.png"
    machoman_item.place_as_tile =
    {
      result = "refined-hazard-mooncrete-left",
      condition_size = 1,
      condition = {layers={water_tile=true}}
    }
    data:extend({machoman_item})
end


data:extend({
       { type = "collision-layer", name = "muluna-no-paving" }
})

if mods["Dectorio"] and DECT.ENABLED["item-group"] then
data:extend({
    {
    type = "item-subgroup",
    name = "flooring-hazard-mooncrete",
    group = DECT.ITEM_GROUP,
    order = "i-e-e"
    },
    {
    type = "item-subgroup",
    name = "flooring-hazard-refined-mooncrete",
    group = DECT.ITEM_GROUP,
    order = "i-e-f"
    },
    {
    type = "item-subgroup",
    name = "flooring-colored-refined-mooncrete",
    group = DECT.ITEM_GROUP,
    order = "i-e-g"
    }
})
end

if mods["Dectorio"] and DECT.ENABLED["item-group"] and mods["electric-tiles"] then
data:extend({
    {
    type = "item-subgroup",
    name = "flooring-electric-hazard-mooncrete",
    group = DECT.ITEM_GROUP,
    order = "i-e-h"
    },
    {
    type = "item-subgroup",
    name = "flooring-electric-hazard-refined-mooncrete",
    group = DECT.ITEM_GROUP,
    order = "i-e-i"
    },
    {
    type = "item-subgroup",
    name = "flooring-electric-refined-mooncrete",
    group = DECT.ITEM_GROUP,
    order = "i-e-j"
    },
})
end