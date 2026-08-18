advancement revoke @s only dimitris_smithing:trigger_break/item_stone_sword
#say "broke minecraft:stone_sword"

data modify storage dbarr:tmp item_id set value "minecraft:stone_sword"
function dimitris_smithing:set_broken {item_id: "minecraft:stone_sword"}

data remove storage dbarr:tmp item_id
