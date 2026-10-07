data:extend({
{
            type = "double-setting",
            name = "gravel-speedwalker",
            setting_type = "startup",
            default_value = 0.9,
            minimum_value = 0.5,
            maximum_value = 5000,
            order = "a"
        },
        {
            type = "double-setting",
            name = "gravel-speedracer",
            setting_type = "startup",
            default_value = 0.75,
            minimum_value = 0.5,
            maximum_value = 5000,
            order = "aa"
        },
         {
            type = "double-setting",
            name = "mooncrete-speedwalker",
            setting_type = "startup",
            default_value = 1.2,
            minimum_value = 0.5,
            maximum_value = 5000,
            order = "aaa"
        },
        {
            type = "double-setting",
            name = "mooncrete-speedracer",
            setting_type = "startup",
            default_value = 0.7,
            minimum_value = 0.5,
            maximum_value = 5000,
            order = "aaaa"
        },
        {
            type = "double-setting",
            name = "refined-speedwalker",
            setting_type = "startup",
            default_value = 1.4,
            minimum_value = 0.5,
            maximum_value = 5000,
            order = "c"
        },
        {
            type = "double-setting",
            name = "refined-speedracer",
            setting_type = "startup",
            default_value = 0.65,
            minimum_value = 0.5,
            maximum_value = 5000,
            order = "d"
        }
})

if mods["Dectorio"] then
    data:extend({
        {
            type = "bool-setting",
            name = "DDgravel-variants",
            setting_type = "startup",
            default_value = true,
            order = "e"
        },
        {
            type = "bool-setting",
            name = "DDextra-gravel",
            setting_type = "startup",
            default_value = true,
            order = "e[a]"
        },
        {
            type = "bool-setting",
            name = "DDwoodfloor-variant",
            setting_type = "startup",
            default_value = true,
            order = "f"
        },
        {
            type = "bool-setting",
            name = "DDgrid-variant",
            setting_type = "startup",
            default_value = true,
            order = "g"
        },
        {
            type = "bool-setting",
            name = "DDpainted-variants",
            setting_type = "startup",
            default_value = true,
            order = "h"
        },
        {
            type = "bool-setting",
            name = "DDelectric-painted-variants",
            setting_type = "startup",
            default_value = true,
            order = "i"
        },
        {
            type = "bool-setting",
            name = "DDelectric-grids",
            setting_type = "startup",
            default_value = true,
            order = "i"
        }
    })
end