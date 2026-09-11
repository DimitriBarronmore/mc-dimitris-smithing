advancement revoke @s only dimitris_smithing:trigger_break/item_crossbow
#say "broke minecraft:crossbow"

data modify storage dbarr:tmp item_id set value "minecraft:crossbow"
function dimitris_smithing:break_and_repair/set_broken {item_id: "minecraft:crossbow"}

data remove storage dbarr:tmp item_id
