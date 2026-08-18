advancement revoke @s only dimitris_smithing:trigger_break/item_golden_axe
#say "broke minecraft:golden_axe"

data modify storage dbarr:tmp item_id set value "minecraft:golden_axe"
function dimitris_smithing:break_and_repair/set_broken {item_id: "minecraft:golden_axe"}

data remove storage dbarr:tmp item_id
