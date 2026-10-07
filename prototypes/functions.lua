local framewerx =  {
        overlay_layout =
        {
          inner_corner =
          {
            spritesheet = "__mooncrete__/graphics/mooncrete-inner-corner.png",
            count = 16,
            scale = 0.5
          },
          outer_corner =
          {
            spritesheet = "__mooncrete__/graphics/mooncrete-outer-corner.png",
            count = 8,
            scale = 0.5
          },
          side =
          {
            spritesheet = "__mooncrete__/graphics/mooncrete-side.png",
            count = 16,
            scale = 0.5
          },
          u_transition =
          {
            spritesheet = "__mooncrete__/graphics/mooncrete-u.png",
            count = 8,
            scale = 0.5
          },
          o_transition =
          {
            spritesheet = "__mooncrete__/graphics/mooncrete-o.png",
            count = 4,
            scale = 0.5
          }
        },
        mask_layout =
        {
          inner_corner =
          {
            spritesheet = "__base__/graphics/terrain/concrete/concrete-inner-corner-mask.png",
            count = 16,
            scale = 0.5
          },
          outer_corner =
          {
            spritesheet = "__base__/graphics/terrain/concrete/concrete-outer-corner-mask.png",
            count = 8,
            scale = 0.5
          },
          side =
          {
            spritesheet = "__base__/graphics/terrain/concrete/concrete-side-mask.png",
            count = 16,
            scale = 0.5
          },
          u_transition =
          {
            spritesheet = "__base__/graphics/terrain/concrete/concrete-u-mask.png",
            count = 8,
            scale = 0.5
          },
          o_transition =
          {
            spritesheet = "__base__/graphics/terrain/concrete/concrete-o-mask.png",
            count = 4,
            scale = 0.5
          }
        }
      }

local matthazard = {
        mask_layout =
        {
          inner_corner =
          {
            spritesheet = "__base__/graphics/terrain/concrete/hazard-concrete-inner-corner-mask.png",
            count = 1,
            scale = 0.5
          },
          outer_corner =
          {
            spritesheet = "__base__/graphics/terrain/concrete/hazard-concrete-outer-corner-mask.png",
            count = 1,
            scale = 0.5
          },
          side =
          {
            spritesheet = "__base__/graphics/terrain/concrete/hazard-concrete-side-mask.png",
            count = 1,
            scale = 0.5
          },
          u_transition =
          {
            spritesheet = "__base__/graphics/terrain/concrete/hazard-concrete-u-mask.png",
            count = 1,
            scale = 0.5
          },
          o_transition =
          {
            spritesheet = "__base__/graphics/terrain/concrete/hazard-concrete-o-mask.png",
            count = 1,
            scale = 0.5
          }
        }
      }
local moonbase =
      {
        picture = "__mooncrete__/graphics/mooncrete.png",
        count = 8,
        scale = 0.5
      }
local refinedbase = 
      {
        picture = "__mooncrete__/graphics/refined-mooncrete.png",
        count = 8,
        scale = 0.5
      }

local tints = {
    {name = "red",    tint = {r = 0.876, g = 0.325, b = 0.306}},
    {name = "green",  tint = {r = 0.234, g = 0.722, b = 0.291}},
    {name = "blue",   tint = {r = 0.426, g = 0.681, b = 0.919}},
    {name = "orange", tint = {r = 0.907, g = 0.630, b = 0.352}},
    {name = "yellow", tint = {r = 0.922, g = 0.793, b = 0.345}},
    {name = "pink",   tint = {r = 0.963, g = 0.753, b = 0.838}},
    {name = "purple", tint = {r = 0.804, g = 0.518, b = 0.937}},
    {name = "black",  tint = {r = 0.5,   g = 0.5,   b = 0.5}},
    {name = "brown",  tint = {r = 0.705, g = 0.529, b = 0.416}},
    {name = "cyan",   tint = {r = 0.428, g = 0.865, b = 0.826}},
    {name = "acid",   tint = {r = 0.684, g = 0.900, b = 0.254}}
}

    local function unlocker(original, new)
        for _, tech in pairs(data.raw["technology"]) do
            if tech.effects then
                for _, effect in ipairs(tech.effects) do
                    if effect.type == "unlock-recipe" and effect.recipe == original then
                        table.insert(tech.effects, {type = "unlock-recipe", recipe = new})
                        break
                    end
                end
            end
        end
    end


 return {
    framewerx = framewerx,
    matthazard = matthazard,
    tints = tints,
    refinedbase = refinedbase,
    moonbase = moonbase,
    unlocker = unlocker
}