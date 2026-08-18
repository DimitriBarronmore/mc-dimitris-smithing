advancement revoke @s only dimitris_smithing:trigger_break/item_flint_and_steel
#say "broke minecraft:flint_and_steel"

data modify storage dbarr:tmp item_id set value "minecraft:flint_and_steel"
function dimitris_smithing:break_and_repair/set_broken {item_id: "minecraft:flint_and_steel"}

data remove storage dbarr:tmp item_id
