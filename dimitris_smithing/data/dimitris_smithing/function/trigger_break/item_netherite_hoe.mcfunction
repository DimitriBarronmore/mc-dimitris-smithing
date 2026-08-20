advancement revoke @s only dimitris_smithing:trigger_break/item_netherite_hoe
#say "broke minecraft:netherite_hoe"

data modify storage dbarr:tmp item_id set value "minecraft:netherite_hoe"
function dimitris_smithing:break_and_repair/set_broken {item_id: "minecraft:netherite_hoe"}

data remove storage dbarr:tmp item_id
