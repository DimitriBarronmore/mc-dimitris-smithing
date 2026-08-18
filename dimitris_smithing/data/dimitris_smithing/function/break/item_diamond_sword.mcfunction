advancement revoke @s only dimitris_smithing:trigger_break/item_diamond_sword
#say "broke minecraft:diamond_sword"

data modify storage dbarr:tmp item_id set value "minecraft:diamond_sword"
function dimitris_smithing:set_broken {item_id: "minecraft:diamond_sword"}

data remove storage dbarr:tmp item_id
