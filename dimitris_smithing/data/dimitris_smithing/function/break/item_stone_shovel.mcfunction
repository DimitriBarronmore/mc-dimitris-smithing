advancement revoke @s only dimitris_smithing:trigger_break/item_stone_shovel
#say "broke minecraft:stone_shovel"

data modify storage dbarr:tmp item_id set value "minecraft:stone_shovel"
function dimitris_smithing:set_broken {item_id: "minecraft:stone_shovel"}

data remove storage dbarr:tmp item_id
