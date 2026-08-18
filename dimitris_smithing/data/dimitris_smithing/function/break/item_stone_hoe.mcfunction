advancement revoke @s only dimitris_smithing:trigger_break/item_stone_hoe
#say "broke minecraft:stone_hoe"

data modify storage dbarr:tmp item_id set value "minecraft:stone_hoe"
function dimitris_smithing:set_broken {item_id: "minecraft:stone_hoe"}

data remove storage dbarr:tmp item_id
