advancement revoke @s only dimitris_smithing:trigger_break/item_netherite_pickaxe
#say "broke minecraft:netherite_pickaxe"

data modify storage dbarr:tmp item_id set value "minecraft:netherite_pickaxe"
function dimitris_smithing:set_broken {item_id: "minecraft:netherite_pickaxe"}

data remove storage dbarr:tmp item_id
