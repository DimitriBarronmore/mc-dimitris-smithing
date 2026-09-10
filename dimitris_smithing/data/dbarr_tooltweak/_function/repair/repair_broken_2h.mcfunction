#say repair_broken_2h
data modify storage dbarr:tmp broken_item_slot set value "armor.head"
execute as @s run function dbarr_tooltweak:repair/repair_broken_3 with storage dbarr:tmp
data remove storage dbarr:tmp broken_item_slot
