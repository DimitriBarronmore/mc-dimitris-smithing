advancement revoke @s only dimitris_smithing:trigger_break/item_diamond_spear
#say "broke minecraft:diamond_spear"

data modify storage dbarr:tmp item_id set value "minecraft:diamond_spear"
function dimitris_smithing:break_and_repair/set_broken {item_id: "minecraft:diamond_spear"}

data remove storage dbarr:tmp item_id
