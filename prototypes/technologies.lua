local path = "__mooncrete__"

data:extend ({
    {
        type = "technology",
        name = "mooncrete",
        icon = path.."/graphics/mooncrete_icon.png",
        effects ={
            {
                type = "unlock-recipe",
                recipe = "mooncrete"
            },
            {
                type = "unlock-recipe",
                recipe = "hazard-mooncrete"
            }
        },
        research_trigger =
            {
                type = "craft-item",
                item = "stone-crushed",
                count = 50
            }
    },
    {
        type = "technology",
        name = "refined-mooncrete",
        icon = path.."/graphics/refined-mooncrete_icon.png",
        effects ={
            {
                type = "unlock-recipe",
                recipe = "refined-mooncrete"
            },
            {
                type = "unlock-recipe",
                recipe = "refined-hazard-mooncrete"
            }
        },
        research_trigger =
            {
                type = "craft-item",
                item = "alumina-crushed",
                count = 50

            }
    }
})