advancement revoke @s only dimitris_smithing:trigger_break/item_wooden_pickaxe
#say "broke minecraft:wooden_pickaxe"

data modify storage dbarr:tmp item_id set value "minecraft:wooden_pickaxe"
function dimitris_smithing:break_and_repair/set_broken {item_id: "minecraft:wooden_pickaxe"}

data remove storage dbarr:tmp item_id
