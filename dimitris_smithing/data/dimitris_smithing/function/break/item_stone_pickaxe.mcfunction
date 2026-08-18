advancement revoke @s only dimitris_smithing:trigger_break/item_stone_pickaxe
#say "broke minecraft:stone_pickaxe"

data modify storage dbarr:tmp item_id set value "minecraft:stone_pickaxe"
function dimitris_smithing:set_broken {item_id: "minecraft:stone_pickaxe"}

data remove storage dbarr:tmp item_id
