#say repair_broken_2o
data modify storage dbarr:tmp broken_item_slot set value "weapon.offhand"
function dimitris_smithing:legacy_repair/repair_broken_3 with storage dbarr:tmp
data remove storage dbarr:tmp broken_item_slot
