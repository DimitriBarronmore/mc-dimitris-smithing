advancement revoke @s only dimitris_smithing:trigger_break/item_netherite_axe
#say "broke minecraft:netherite_axe"

data modify storage dbarr:tmp item_id set value "minecraft:netherite_axe"
function dimitris_smithing:break_and_repair/set_broken {item_id: "minecraft:netherite_axe"}

data remove storage dbarr:tmp item_id
