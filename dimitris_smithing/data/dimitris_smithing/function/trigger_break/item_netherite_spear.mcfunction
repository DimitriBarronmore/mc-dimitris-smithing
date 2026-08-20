advancement revoke @s only dimitris_smithing:trigger_break/item_netherite_spear
#say "broke minecraft:netherite_spear"

data modify storage dbarr:tmp item_id set value "minecraft:netherite_spear"
function dimitris_smithing:break_and_repair/set_broken {item_id: "minecraft:netherite_spear"}

data remove storage dbarr:tmp item_id
