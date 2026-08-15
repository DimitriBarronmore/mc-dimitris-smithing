#say get_dur_and_model

# get item data from arbitrary slot
summon item_display ~ ~ ~ {Tags:["dbtemp.current"]}
$item replace entity @n[type=item_display,tag=dbtemp.current] contents from entity @s $(broken_item_slot)

# ensure item damage is exact to get correct durability
#  temporary
data modify storage dbarr:tmp current_dur set from entity @n[type=item_display, tag=dbtemp.current] item.components.minecraft:damage
item modify entity @n[type=item_display,tag=dbtemp.current] contents {type:"minecraft:set_damage",damage:0}
data modify storage dbarr:tmp broken_item set from entity @n[type=item_display,tag=dbtemp.current] item

# cleanup
kill @n[type=item_display,tag=dbtemp.current]

# run p2 with necessary data
data modify storage dbarr:tmp item_id set from storage dbarr:tmp broken_item.id
data modify storage dbarr:tmp item_durability set from storage dbarr:tmp broken_item.components.minecraft:damage
function dbarr_tooltweak:get_dur_and_model_2 with storage dbarr:tmp

data remove storage dbarr:tmp item_id
data remove storage dbarr:tmp item_durability
data remove storage dbarr:tmp broken_item
#  temporary
data remove storage dbarr:tmp current_dur
