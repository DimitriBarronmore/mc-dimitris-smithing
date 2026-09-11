advancement revoke @s only dimitris_smithing:trigger_break/item_golden_sword
#say "broke minecraft:golden_sword"

data modify storage dbarr:tmp item_id set value "minecraft:golden_sword"
function dimitris_smithing:break_and_repair/set_broken {item_id: "minecraft:golden_sword"}

data remove storage dbarr:tmp item_id
