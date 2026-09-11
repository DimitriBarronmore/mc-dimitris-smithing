#say repair_broken_2l
data modify storage dbarr:tmp broken_item_slot set value "armor.legs"
execute as @s run function dimitris_smithing:legacy_repair/repair_broken_3 with storage dbarr:tmp
data remove storage dbarr:tmp broken_item_slot
