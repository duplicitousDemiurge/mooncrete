if mods["Dectorio"] then require("__mooncrete__.prototypes.Dectorio") end
if mods["electric-tiles"] then require("__mooncrete__.prototypes.electric-tiles") end

--concrete disablement--

if mods["planet-muluna"] then
    for i = 1, 9 do
        local moonman = data.raw["tile"]["muluna-dirt-" .. i]
    if moonman then
        moonman.collision_mask.layers["muluna-no-paving"] = true
        end
    end
end

if mods["planet-muluna"] then
    local handsoff = { "concrete", "refined-concrete", "hazard-concrete", "refined-hazard-concrete", "stone-brick"}
    for _, name in ipairs(handsoff) do
        local item = data.raw["item"][name]
        if item and item.place_as_tile then
            item.place_as_tile.condition.layers["muluna-no-paving"] = true
        end
    end
end

if mods["planet-muluna"] and mods["Dectorio"] then
    local nothanks = {"dect-wood-floor", "dect-iron-ore-gravel", "dect-copper-ore-gravel", "dect-stone-gravel", "dect-coal-gravel", "dect-concrete-grid", "dect-paint-emergency", "dect-paint-radiation", "dect-paint-safety", "dect-paint-caution", "dect-paint-danger", "dect-paint-defect", "dect-paint-operations", "dect-paint-refined-emergency", "dect-paint-refined-radiation", "dect-paint-refined-safety", "dect-paint-refined-caution", "dect-paint-refined-danger", "dect-paint-refined-defect", "dect-paint-refined-operations", "dect-red-refined-concrete", "dect-green-refined-concrete", "dect-blue-refined-concrete", "dect-orange-refined-concrete", "dect-yellow-refined-concrete", "dect-pink-refined-concrete", "dect-purple-refined-concrete", "dect-black-refined-concrete", "dect-brown-refined-concrete", "dect-cyan-refined-concrete", "dect-acid-refined-concrete"}
    for _, name in ipairs(nothanks) do
        local item = data.raw["item"][name]
        if item and item.place_as_tile then
            item.place_as_tile.condition.layers["muluna-no-paving"] = true
        end
    end
end

if mods["planet-muluna"] and mods["electric-tiles"] then
    local frigoff = {"concrete", "refined-concrete", "hazard-concrete", "refined-hazard-concrete", "stone-brick", "dect-wood-floor", "dect-iron-ore-gravel", "dect-copper-ore-gravel", "dect-stone-gravel", "dect-coal-gravel", "dect-concrete-grid", "dect-paint-emergency", "dect-paint-radiation", "dect-paint-safety", "dect-paint-caution", "dect-paint-danger", "dect-paint-defect", "dect-paint-operations", "dect-paint-refined-emergency", "dect-paint-refined-radiation", "dect-paint-refined-safety", "dect-paint-refined-caution", "dect-paint-refined-danger", "dect-paint-refined-defect", "dect-paint-refined-operations", "dect-red-refined-concrete", "dect-green-refined-concrete", "dect-blue-refined-concrete", "dect-orange-refined-concrete", "dect-yellow-refined-concrete", "dect-pink-refined-concrete", "dect-purple-refined-concrete", "dect-black-refined-concrete", "dect-brown-refined-concrete", "dect-cyan-refined-concrete", "dect-acid-refined-concrete"}
    for _, name in ipairs(frigoff) do
        local item = data.raw["item"]["F077ET-"..name]
        if item and item.place_as_tile then
            item.place_as_tile.condition.layers["muluna-no-paving"] = true
        end
    end
end

--organize--

if mods ["Dectorio"] and DECT.ENABLED["item-group"] and mods["electric-tiles"] then
    data.raw["item-subgroup"]["F077ET-terrain"].order = "i-e-a"
    data.raw["item-subgroup"]["F077ET-terrain-dect-hazards"].order = "i-e-b"
    data.raw["item-subgroup"]["F077ET-terrain-dect-refined-hazards"].order = "i-e-c"
    data.raw["item-subgroup"]["F077ET-terrain-dect-colored"].order = "i-e-d"

end

if mods["Dectorio"] and DECT.ENABLED["painted-concrete"] and DECT.ENABLED["item-group"] and settings.startup["DDpainted-variants"].value then
    for _, rainbow in ipairs({"emergency", "radiation", "safety", "caution", "danger", "defect", "operations"}) do
        local name = "dect-paint-"..rainbow.."-mooncrete"
        for _, type in ipairs({"item", "recipe"}) do
            local organizer = data.raw[type][name]
        if organizer then organizer.subgroup = "flooring-hazard-mooncrete" end
        end
    end

    for _, myriad in ipairs({"emergency", "radiation", "safety", "caution", "danger", "defect", "operations"}) do
        local nombre = "dect-paint-refined-"..myriad.."-mooncrete"
        for _, cat in ipairs({"item", "recipe"}) do
            local arrayer = data.raw[cat][nombre]
        if arrayer then arrayer.subgroup = "flooring-hazard-refined-mooncrete" end
        end
    end

    for _, colors in ipairs({"red", "green", "blue", "yellow", "orange", "pink", "purple", "black", "brown", "cyan", "acid"}) do
        local nomen = "dect-"..colors.."-refined-mooncrete"
        for _, kind in ipairs({"item", "recipe"}) do
            local orderer = data.raw[kind][nomen]
        if orderer then orderer.subgroup = "flooring-colored-refined-mooncrete" end
        end

    data.raw["recipe"]["hazard-mooncrete"].subgroup = "flooring-hazard-mooncrete"
    data.raw["item"]["hazard-mooncrete"].subgroup = "flooring-hazard-mooncrete"
    data.raw["recipe"]["refined-hazard-mooncrete"].subgroup = "flooring-hazard-refined-mooncrete"
    data.raw["item"]["refined-hazard-mooncrete"].subgroup = "flooring-hazard-refined-mooncrete"
    end
end


if mods["Dectorio"] and mods["electric-tiles"] and DECT.ENABLED["painted-concrete"] and DECT.ENABLED["item-group"] and settings.startup["DDpainted-variants"].value and settings.startup["DDelectric-painted-variants"].value then
    for _, rainbow in ipairs({"hazard", "emergency", "radiation", "safety", "caution", "danger", "defect", "operations"}) do
        local name = "F077ET-dect-paint-"..rainbow.."-mooncrete"
        for _, type in ipairs({"item", "recipe"}) do
            local organizer = data.raw[type][name]
        if organizer then organizer.subgroup = "flooring-electric-hazard-mooncrete" end
        end
    end

    for _, myriad in ipairs({"hazard", "emergency", "radiation", "safety", "caution", "danger", "defect", "operations"}) do
        local nombre = "F077ET-dect-paint-refined-"..myriad.."-mooncrete"
        for _, cat in ipairs({"item", "recipe"}) do
            local arrayer = data.raw[cat][nombre]
        if arrayer then arrayer.subgroup = "flooring-electric-hazard-refined-mooncrete" end
        end
    end

    for _, colors in ipairs({"red", "green", "blue", "yellow", "orange", "pink", "purple", "black", "brown", "cyan", "acid"}) do
        local nomen = "F077ET-dect-"..colors.."-refined-mooncrete"
        for _, kind in ipairs({"item", "recipe"}) do
            local orderer = data.raw[kind][nomen]
        if orderer then orderer.subgroup = "flooring-electric-refined-mooncrete" end
        end
    end

    data.raw["recipe"]["F077ET-hazard-mooncrete"].subgroup = "flooring-electric-hazard-mooncrete"
    data.raw["item"]["F077ET-hazard-mooncrete"].subgroup = "flooring-electric-hazard-mooncrete"
    data.raw["recipe"]["F077ET-refined-hazard-mooncrete"].subgroup = "flooring-electric-hazard-refined-mooncrete"
    data.raw["item"]["F077ET-refined-hazard-mooncrete"].subgroup = "flooring-electric-hazard-refined-mooncrete"
    data.raw["recipe"]["F077ET-hazard-concrete"].subgroup = "F077ET-terrain-dect-hazards"
    data.raw["item"]["F077ET-hazard-concrete"].subgroup = "F077ET-terrain-dect-hazards"
    data.raw["recipe"]["F077ET-refined-hazard-concrete"].subgroup = "F077ET-terrain-dect-refined-hazards"
    data.raw["item"]["F077ET-refined-hazard-concrete"].subgroup = "F077ET-terrain-dect-refined-hazards"
end