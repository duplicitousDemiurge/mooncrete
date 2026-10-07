local funk = require("__mooncrete__.prototypes.functions")
local unlocker = funk.unlocker
local stankyleg = settings.startup["gravel-speedwalker"].value
local stankycar = settings.startup["gravel-speedracer"].value

--muluna gravel speeds--
if data.raw["tile"]["muluna-gravel"] then local moongravel = data.raw["tile"]["muluna-gravel"]
moongravel.walking_speed_modifier = stankyleg
moongravel.vehicle_friction_modifier = stankycar
end

--Ass Fault--
if mods["AsphaltRoadsPatched"] and data.raw["technology"]["wood-gas-processing"] then
    table.insert(data.raw["technology"]["wood-gas-processing"].effects, {
        type = "unlock-recipe",
        recipe = "asphalt-from-bitumen"
    })
end

--concrete > mooncrete--

local wifeswap = {
    ["concrete"] = "mooncrete",
    ["refined-concrete"] = "refined-mooncrete"
}

local mudskipper = {
    ["hazard-concrete"] = true,
    ["refined-hazard-concrete"] = true,
    ["dect-red-refined-concrete"] = true,
    ["dect-green-refined-concrete"] = true,
    ["dect-blue-refined-concrete"] = true,
    ["dect-orange-refined-concrete"] = true,
    ["dect-yellow-refined-concrete"] = true,
    ["dect-pink-refined-concrete"] = true,
    ["dect-purple-refined-concrete"] = true,
    ["dect-black-refined-concrete"] = true,
    ["dect-brown-refined-concrete"] = true,
    ["dect-cyan-refined-concrete"] = true,
    ["dect-acid-refined-concrete"] = true,
    ["dect-concrete-grid"] = true,
    ["dect-paint-emergency"] = true,
    ["dect-paint-radiation"] = true,
    ["dect-paint-safety"] = true,
    ["dect-paint-caution"] = true,
    ["dect-paint-danger"] = true,
    ["dect-paint-defect"] = true,
    ["dect-paint-operations"] = true,
    ["dect-paint-refined-emergency"] = true,
    ["dect-paint-refined-radiation"] = true,
    ["dect-paint-refined-safety"] = true,
    ["dect-paint-refined-caution"] = true,
    ["dect-paint-refined-danger"] = true,
    ["dect-paint-refined-defect"] = true,
    ["dect-paint-refined-operations"] = true,
    ["F077ET-concrete"] = true,
    ["F077ET-refined-concrete"] = true
}

local moonbuild = {}
local has_alt = {}

for recipe_name, recipe in pairs(data.raw["recipe"]) do
    if recipe.ingredients and not wifeswap[recipe_name] and not mudskipper[recipe_name] then
        local altbuild = false
        for _, ing in pairs(recipe.ingredients) do
            if wifeswap[ing.name or ing[1]] then
                altbuild = true
                break
            end
        end

        if altbuild then
            local alt = table.deepcopy(recipe)
            alt.name = recipe.name .. "-mooncrete"
            alt.hide_from_player_crafting = true
            local base_name = recipe.localised_name or {"entity-name." .. recipe.name}
            alt.localised_name = {"", base_name, " (Mooncrete)"}
            has_alt[recipe.name] = alt.name
            for _, ing in pairs(alt.ingredients) do
                local greedyants = ing.name or ing[1]
                local switcheroo = wifeswap[greedyants]
                if switcheroo  then
                    local amount = ing.amount or ing[2]
                    local newamount = math.ceil(amount * 1.25)
                    if ing.name then
                        ing.name, ing.amount = switcheroo, newamount
                    else
                        ing[1], ing[2] = switcheroo, newamount
                    end
                end
            end

            table.insert(moonbuild, alt)
        end
    end
end

data:extend(moonbuild)
for original, alt_name in pairs(has_alt) do
    unlocker(original, alt_name)
end