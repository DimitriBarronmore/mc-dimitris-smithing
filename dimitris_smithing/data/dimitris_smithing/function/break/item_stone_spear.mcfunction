advancement revoke @s only dimitris_smithing:trigger_break/item_stone_spear
#say "broke minecraft:stone_spear"

data modify storage dbarr:tmp item_id set value "minecraft:stone_spear"
function dimitris_smithing:break_and_repair/set_broken {item_id: "minecraft:stone_spear"}

data remove storage dbarr:tmp item_id
