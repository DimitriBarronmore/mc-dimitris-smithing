#say repair_broken_2m
data modify storage dbarr:tmp broken_item_slot set value "weapon.mainhand"
function dbarr_tooltweak:repair/repair_broken_3 with storage dbarr:tmp
data remove storage dbarr:tmp broken_item_slot
