advancement revoke @s only dimitris_smithing:trigger_break/item_fishing_rod
#say "broke minecraft:fishing_rod"

data modify storage dbarr:tmp item_id set value "minecraft:fishing_rod"
function dimitris_smithing:break_and_repair/set_broken {item_id: "minecraft:fishing_rod"}

data remove storage dbarr:tmp item_id
