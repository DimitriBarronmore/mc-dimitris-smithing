local items = {
    "#minecraft:foot_armor",
    "#minecraft:leg_armor",
    "#minecraft:chest_armor",
    "#minecraft:head_armor",
    --"minecraft:elytra",
    "minecraft:shield",

    "minecraft:wooden_sword",
    "minecraft:stone_sword",
    "minecraft:copper_sword",
    "minecraft:iron_sword",
    "minecraft:golden_sword",
    "minecraft:diamond_sword",
    "minecraft:netherite_sword",

    "minecraft:wooden_axe",
    "minecraft:stone_axe",
    "minecraft:copper_axe",
    "minecraft:iron_axe",
    "minecraft:golden_axe",
    "minecraft:diamond_axe",
    "minecraft:netherite_axe",

    "minecraft:wooden_pickaxe",
    "minecraft:stone_pickaxe",
    "minecraft:copper_pickaxe",
    "minecraft:iron_pickaxe",
    "minecraft:golden_pickaxe",
    "minecraft:diamond_pickaxe",
    "minecraft:netherite_pickaxe",

    "minecraft:wooden_shovel",
    "minecraft:stone_shovel",
    "minecraft:copper_shovel",
    "minecraft:iron_shovel",
    "minecraft:golden_shovel",
    "minecraft:diamond_shovel",
    "minecraft:netherite_shovel",

    "minecraft:wooden_hoe",
    "minecraft:stone_hoe",
    "minecraft:copper_hoe",
    "minecraft:iron_hoe",
    "minecraft:golden_hoe",
    "minecraft:diamond_hoe",
    "minecraft:netherite_hoe",

    "minecraft:wooden_spear",
    "minecraft:stone_spear",
    "minecraft:copper_spear",
    "minecraft:iron_spear",
    "minecraft:golden_spear",
    "minecraft:diamond_spear",
    "minecraft:netherite_spear",

    "minecraft:bow",
    "minecraft:crossbow",
    "minecraft:trident",
    "minecraft:flint_and_steel",
    "minecraft:shears",
    "minecraft:brush",
    "minecraft:fishing_rod",
    "minecraft:carrot_on_a_stick",
    "minecraft:warped_fungus_on_a_stick",
    "minecraft:mace",
}

local template_advancement = [[
{
  "criteria": {
    "nearly_broken": {
      "trigger": "minecraft:item_durability_changed",
      "conditions": {
        "durability": {
          "max": %s
        },
        "item": {
          "items": "%s"
        }
      }
    }
  },
  "rewards": {
    "function": "dimitris_smithing:break/item_%s"
  }
}
]]

local template_function = [[
advancement revoke @s only dimitris_smithing:trigger_break/item_%s
#say "broke %s"
%s
data modify storage dbarr:tmp item_id set value "%s"
function dimitris_smithing:set_broken {item_id: "%s"}
%s
data remove storage dbarr:tmp item_id
]]

for i, item in ipairs(items) do
  local short_name, before_f, after_f = "", "", ""
  local max_dur = 0
  if item:sub(1,1) == "#" then
    short_name = item:sub(string.len("#minecraft:*"), -1)
  else
    short_name = item:sub(string.len("minecraft:*"), -1)
  end
  if item == "#minecraft:head_armor" then
    before_f = 'data modify storage dbarr:tmp armor_slot set value "armor.head"'
  end
  if item == "#minecraft:chest_armor" or item == "minecraft:elytra" then
    before_f = 'data modify storage dbarr:tmp armor_slot set value "armor.chest"'
  end
  if item == "#minecraft:leg_armor" then
    before_f = 'data modify storage dbarr:tmp armor_slot set value "armor.legs"'
  end
  if item == "#minecraft:foot_armor" then
    before_f = 'data modify storage dbarr:tmp armor_slot set value "armor.feet"'
  end
  if before_f ~= "" then after_f = "data remove storage dbarr:tmp armor_slot" end
  if item == "minecraft:fishing_rod" then
    max_dur = 5
  end
  -- print(item, short_name)
  local f = io.open("advancement/trigger_break/item_" .. short_name .. ".json", "w+")
  assert(f)
  f:write(template_advancement:format(max_dur, item, short_name))
  f:close()
  local f = io.open("function/break/item_" .. short_name .. ".mcfunction", "w+")
  assert(f)
  f:write(template_function:format(short_name, item, before_f, item, item, after_f))
  f:close()
end