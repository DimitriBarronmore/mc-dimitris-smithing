advancement revoke @s only dimitris_smithing:trigger_break/item_copper_sword
#say "broke minecraft:copper_sword"

data modify storage dbarr:tmp item_id set value "minecraft:copper_sword"
function dimitris_smithing:break_and_repair/set_broken {item_id: "minecraft:copper_sword"}

data remove storage dbarr:tmp item_id
