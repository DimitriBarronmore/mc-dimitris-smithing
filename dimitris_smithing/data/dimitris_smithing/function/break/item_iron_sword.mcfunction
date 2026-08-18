advancement revoke @s only dimitris_smithing:trigger_break/item_iron_sword
#say "broke minecraft:iron_sword"

data modify storage dbarr:tmp item_id set value "minecraft:iron_sword"
function dimitris_smithing:break_and_repair/set_broken {item_id: "minecraft:iron_sword"}

data remove storage dbarr:tmp item_id
