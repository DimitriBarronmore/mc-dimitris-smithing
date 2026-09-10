#say set_broken_tool

## Shield Check
#execute if data storage dbarr:tmp is_shield run say shield
execute if data storage dbarr:tmp is_shield if items entity @s weapon.mainhand minecraft:shield[minecraft:custom_name] run data modify storage dbarr:tmp broken_item_slot set value "weapon.mainhand"
execute if data storage dbarr:tmp is_shield if items entity @s weapon.offhand minecraft:shield[minecraft:custom_name] run data modify storage dbarr:tmp broken_item_slot set value "weapon.offhand"
execute if data storage dbarr:tmp broken_item_slot run function dbarr_tooltweak:get_dur_and_model with storage dbarr:tmp
execute if data storage dbarr:tmp broken_item_slot run return run data remove storage dbarr:tmp broken_item_slot

## Armor Check
#execute if data storage dbarr:tmp is_armor run say armor
execute if data storage dbarr:tmp is_armor if items entity @s armor.feet #dbarr_tooltweak:armors[minecraft:custom_name] run data modify storage dbarr:tmp broken_item_slot set value "armor.feet"
execute if data storage dbarr:tmp is_armor if items entity @s armor.feet #dbarr_tooltweak:armors[minecraft:custom_name] run data modify storage dbarr:tmp ext_equip_feet set value 1b
execute if data storage dbarr:tmp broken_item_slot run function dbarr_tooltweak:get_dur_and_model with storage dbarr:tmp
data remove storage dbarr:tmp broken_item_slot

execute if data storage dbarr:tmp is_armor if items entity @s armor.head #dbarr_tooltweak:armors[minecraft:custom_name] run data modify storage dbarr:tmp broken_item_slot set value "armor.head"
execute if data storage dbarr:tmp is_armor if items entity @s armor.head #dbarr_tooltweak:armors[minecraft:custom_name] run data modify storage dbarr:tmp ext_equip_head set value 1b
execute if data storage dbarr:tmp broken_item_slot run function dbarr_tooltweak:get_dur_and_model with storage dbarr:tmp
data remove storage dbarr:tmp broken_item_slot

execute if data storage dbarr:tmp is_armor if items entity @s armor.legs #dbarr_tooltweak:armors[minecraft:custom_name] run data modify storage dbarr:tmp broken_item_slot set value "armor.legs"
execute if data storage dbarr:tmp is_armor if items entity @s armor.legs #dbarr_tooltweak:armors[minecraft:custom_name] run data modify storage dbarr:tmp ext_equip_legs set value 1b
execute if data storage dbarr:tmp broken_item_slot run function dbarr_tooltweak:get_dur_and_model with storage dbarr:tmp
data remove storage dbarr:tmp broken_item_slot

execute if data storage dbarr:tmp is_armor if items entity @s armor.chest #dbarr_tooltweak:armors[minecraft:custom_name] run data modify storage dbarr:tmp broken_item_slot set value "armor.chest"
execute if data storage dbarr:tmp is_armor if items entity @s armor.chest #dbarr_tooltweak:armors[minecraft:custom_name] run data modify storage dbarr:tmp ext_equip_chest set value 1b
execute if data storage dbarr:tmp broken_item_slot run function dbarr_tooltweak:get_dur_and_model with storage dbarr:tmp
data remove storage dbarr:tmp broken_item_slot

data remove storage dbarr:tmp ext_equip_chest
data remove storage dbarr:tmp ext_equip_legs
data remove storage dbarr:tmp ext_equip_feet
data remove storage dbarr:tmp ext_equip_head
execute if data storage dbarr:tmp broken_item_slot run return 1

## Mainhand Check
#execute if predicate dbarr_tooltweak:zerodurmainhand if items entity @s weapon.mainhand *[minecraft:custom_name] run data modify storage dbarr:tmp broken_item_slot set value "weapon.mainhand"
execute if items entity @s weapon.mainhand #dbarr_tooltweak:tools[minecraft:custom_name] run data modify storage dbarr:tmp broken_item_slot set value "weapon.mainhand"
execute if data storage dbarr:tmp broken_item_slot run function dbarr_tooltweak:get_dur_and_model with storage dbarr:tmp
data remove storage dbarr:tmp broken_item_slot

## Offhand Check
execute if items entity @s weapon.offhand #dbarr_tooltweak:tools[minecraft:custom_name] run data modify storage dbarr:tmp broken_item_slot set value "weapon.offhand"
execute if data storage dbarr:tmp broken_item_slot run function dbarr_tooltweak:get_dur_and_model with storage dbarr:tmp
data remove storage dbarr:tmp broken_item_slot
