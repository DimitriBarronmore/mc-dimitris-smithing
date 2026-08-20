advancement revoke @s only dimitris_smithing:trigger_break/item_diamond_pickaxe
#say "broke minecraft:diamond_pickaxe"

data modify storage dbarr:tmp item_id set value "minecraft:diamond_pickaxe"
function dimitris_smithing:break_and_repair/set_broken {item_id: "minecraft:diamond_pickaxe"}

data remove storage dbarr:tmp item_id
