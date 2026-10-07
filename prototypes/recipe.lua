local path = "__mooncrete__"

if data.raw["technology"]["Arci-asphalt"] then
local altphalt = table.deepcopy(data.raw["recipe"]["Arci-asphalt"])
altphalt.name = "asphalt-from-bitumen"
altphalt.ingredients =
{
    {type = "fluid", name = "tar", amount = 100},
    {type = "item", name = "muluna-lunar-regolith", amount = 10},
    {type = "item", name = "stone-crushed", amount = 10}
}
data:extend({altphalt})
end

data:extend(
{
    {
        type = "recipe",
        name = "mooncrete",
        icon = path.."/graphics/mooncrete_icon.png",
        energy_required = 12,
        enabled = false,
        category = "crafting-with-fluid",
        ingredients =
        {
            {type = "item", name = "muluna-lunar-regolith", amount = 5},
            {type = "item", name = "stone-crushed", amount = 5},
            {type = "item", name = "sulfur", amount = 2},
            {type = "fluid", name = "steam", amount = 50}
        },
        results = {{type = "item", name = "mooncrete", amount = 15}}
    },
    {
        type = "recipe",
        name = "refined-mooncrete",
        icon = path.."/graphics/refined-mooncrete_icon.png",
        energy_required = 13,
        enabled = false,
        category = "crafting-with-fluid",
        ingredients =
        {
            {type = "item", name = "mooncrete", amount = 15},
            {type = "item", name = "silicon", amount = 2},
            {type = "fluid", name = "steam", amount = 50},
            {type = "item", name = "alumina-crushed", amount = 5}
        },
        results = {{type = "item", name = "refined-mooncrete", amount = 15}}
    },
    {
        type = "recipe",
        name = "hazard-mooncrete",
        icon = path.."/graphics/hazard-mooncrete_icon.png",
        energy_required = 0.25,
        enabled = false,
        category = "crafting",
        ingredients =
        {
            {type = "item", name = "mooncrete", amount = 15}
        },
        results = {{type = "item", name = "hazard-mooncrete", amount = 15}}
    },
    {
        type = "recipe",
        name = "refined-hazard-mooncrete",
        icon = path.."/graphics/refined-hazard-mooncrete_icon.png",
        energy_required = 0.25,
        enabled = false,
        category = "crafting",
        ingredients =
        {
            {type = "item", name = "refined-mooncrete", amount = 15}
        },
        results = {{type = "item", name = "refined-hazard-mooncrete", amount = 15}}
    }
})