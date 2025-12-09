#say remodel_armor_1

# get item data from arbitrary slot
summon item_display ~ ~ ~ {Tags:["dbtemp.current"]}
$item replace entity @n[type=item_display,tag=dbtemp.current] contents from entity @s $(broken_item_slot)

data modify storage dbarr:tmp armor_item set from entity @n[type=item_display,tag=dbtemp.current] item

# cleanup
kill @n[type=item_display,tag=dbtemp.current]

# run p2 with necessary data

data modify storage dbarr:tmp armor_slot set from storage dbarr:tmp armor_item.components.minecraft:custom_data.dbarr_equip_in.slot
data modify storage dbarr:tmp armor_asset set from storage dbarr:tmp armor_item.components.minecraft:custom_data.dbarr_armorasset.id
function dbarr_tooltweak:repair/remodel_broken_armor_2 with storage dbarr:tmp

data remove storage dbarr:tmp armor_item
data remove storage dbarr:tmp armor_slot
data remove storage dbarr:tmp armor_asset
