advancement revoke @s only dimitris_smithing:trigger_break/item_diamond_shovel
#say "broke minecraft:diamond_shovel"

data modify storage dbarr:tmp item_id set value "minecraft:diamond_shovel"
function dimitris_smithing:break_and_repair/set_broken {item_id: "minecraft:diamond_shovel"}

data remove storage dbarr:tmp item_id
