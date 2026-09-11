advancement revoke @s only dimitris_smithing:trigger_break/item_golden_pickaxe
#say "broke minecraft:golden_pickaxe"

data modify storage dbarr:tmp item_id set value "minecraft:golden_pickaxe"
function dimitris_smithing:break_and_repair/set_broken {item_id: "minecraft:golden_pickaxe"}

data remove storage dbarr:tmp item_id
