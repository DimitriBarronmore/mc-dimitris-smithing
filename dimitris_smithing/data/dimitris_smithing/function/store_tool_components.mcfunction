## We summon a small invisible mannequin to take our item, because it conveniently has a mainhand slot.
summon minecraft:mannequin ~ ~ ~ {\
    Tags:["dbtemp.current"],\
    attributes: [{id:"minecraft:scale", base:0.0001d}],\
    active_effects:[{duration:-1,show_particles:0b,amplifier:1b,id:"minecraft:invisibility"}]\
    }
$item replace entity @n[type=mannequin,tag=dbtemp.current] weapon.mainhand from entity @s $(item_slot)

## Early return unless item is either named or enchanted.
execute as @n[type=mannequin,tag=dbtemp.current] unless predicate dimitris_smithing:named_or_enchanted_tool run return run function dimitris_smithing:store_tool_components_cleanup

## Save the item's ID to storage for later.
data remove storage dbarr:tmp stored_id
data modify storage dbarr:tmp stored_id set from entity @n[type=mannequin,tag=dbtemp.current] equipment.mainhand.id

## Rip all components, including hidden default components.
execute at @s as @n[type=mannequin,tag=dbtemp.current] run loot replace entity @s weapon.mainhand fish {\
  "type": "minecraft:empty",\
  "pools": [\
    {\
      "rolls": 1,\
      "entries": [\
        {\
          "type": "minecraft:item",\
          "name": "minecraft:stone_pickaxe"\
        }\
      ],\
      "modifier": {\
        "type": "minecraft:copy_components",\
        "source": "tool"\
      }\
    }\
  ]\
} ~ ~ ~ mainhand

## Copy the item's internal components to storage.
data remove storage dbarr:tmp stored_components
data modify storage dbarr:tmp stored_components set from entity @n[type=mannequin,tag=dbtemp.current] equipment.mainhand.components

## Clear the item's base components.
data remove entity @n[type=mannequin,tag=dbtemp.current] equipment.mainhand.components

## Copy components and ID from storage to custom data component.
item modify entity @n[type=mannequin,tag=dbtemp.current] weapon.mainhand {\
  type:"minecraft:copy_custom_data",\
  source:{type:"minecraft:storage",source:"dbarr:tmp"},\
  ops:[{source:"stored_components",target:"stored_components",op:"replace"}]\
  }
item modify entity @n[type=mannequin,tag=dbtemp.current] weapon.mainhand {\
  type:"minecraft:copy_custom_data",\
  source:{type:"minecraft:storage",source:"dbarr:tmp"},\
  ops:[{source:"stored_id",target:"stored_id",op:"replace"}]\
  }

## Copy the enchantments of the held item to stored_enchantments.
execute as @n[type=mannequin,tag=dbtemp.current] run \
  data modify entity @s equipment.mainhand.components.minecraft:stored_enchantments set from storage dbarr:tmp stored_components.minecraft:enchantments

## Copy the most important components back to the item.
data modify entity @n[type=mannequin,tag=dbtemp.current] \
  equipment.mainhand.components.minecraft:item_name set from storage dbarr:tmp stored_components.minecraft:item_name
data modify entity @n[type=mannequin,tag=dbtemp.current] \
  equipment.mainhand.components.minecraft:custom_name set from storage dbarr:tmp stored_components.minecraft:custom_name
data modify entity @n[type=mannequin,tag=dbtemp.current] \
  equipment.mainhand.components.minecraft:custom_model_data set from storage dbarr:tmp stored_components.minecraft:custom_model_data
data modify entity @n[type=mannequin,tag=dbtemp.current] \
  equipment.mainhand.components.minecraft:item_model set from storage dbarr:tmp stored_components.minecraft:item_model
data modify entity @n[type=mannequin,tag=dbtemp.current] \
  equipment.mainhand.components.minecraft:max_damage set from storage dbarr:tmp stored_components.minecraft:max_damage
## Modify the item to have 0 durability, since it's broken.
data modify entity @n[type=mannequin,tag=dbtemp.current] \
  equipment.mainhand.components.minecraft:damage set from storage dbarr:tmp stored_components.minecraft:max_damage
data modify entity @n[type=mannequin,tag=dbtemp.current] \
  equipment.mainhand.components.minecraft:damage_resistant set from storage dbarr:tmp stored_components.minecraft:damage_resistant
data modify entity @n[type=mannequin,tag=dbtemp.current] \
  equipment.mainhand.components.minecraft:repairable set from storage dbarr:tmp stored_components.minecraft:repairable

## If the item is armor, ensure it remains equippable with no model or durability loss.
execute if data storage dbarr:tmp stored_components.minecraft:equippable run \
  data modify entity @n[type=mannequin,tag=dbtemp.current] \
    equipment.mainhand.components.minecraft:equippable set from storage dbarr:tmp stored_components.minecraft:equippable
execute if data storage dbarr:tmp stored_components.minecraft:equippable run \
  data modify entity @n[type=mannequin,tag=dbtemp.current] \
    equipment.mainhand.components.minecraft:equippable.damage_on_hurt set value false
execute if data storage dbarr:tmp stored_components.minecraft:equippable run \
  data modify entity @n[type=mannequin,tag=dbtemp.current] \
    equipment.mainhand.components.minecraft:equippable.asset_id set value "minecraft:pink_carpet"

## Add "broken" enchantment to the item.
item modify entity @n[type=mannequin,tag=dbtemp.current] weapon.mainhand {type:"minecraft:set_components", "components":{"minecraft:enchantments":{"dimitris_smithing:broken":1}}}



## Give the final item back to the player.
$item replace entity @s $(item_slot) from entity @n[type=mannequin,tag=dbtemp.current] weapon.mainhand

## Cleanup.
function dimitris_smithing:store_tool_components_cleanup

# TODO
# Equippable tag for armor, just so it can still be replaced in-slot
# Figure out what to do with stuff like shears and fishing rods
