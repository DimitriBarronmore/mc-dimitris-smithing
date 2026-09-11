advancement revoke @s only dimitris_smithing:trigger_break/item_diamond_axe
#say "broke minecraft:diamond_axe"

data modify storage dbarr:tmp item_id set value "minecraft:diamond_axe"
function dimitris_smithing:break_and_repair/set_broken {item_id: "minecraft:diamond_axe"}

data remove storage dbarr:tmp item_id
