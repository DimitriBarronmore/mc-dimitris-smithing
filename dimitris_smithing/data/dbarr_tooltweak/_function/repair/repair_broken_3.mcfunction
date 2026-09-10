#say repair_broken_3 from @s
#$say slot is $(broken_item_slot)

## get item data from arbitrary slot
summon item_display ~ ~ ~ {Tags:["dbtemp.current"]}
$item replace entity @e[type=item_display, tag=dbtemp.current] contents from entity @s $(broken_item_slot)
data modify storage dbarr:tmp item_id set from entity @n[type=item_display, tag=dbtemp.current] item.components.minecraft:item_model
kill @n[type=item_display,tag=dbtemp.current]

function dbarr_tooltweak:repair/repair_broken_4 with storage dbarr:tmp

data remove storage dbarr:tmp item_id

