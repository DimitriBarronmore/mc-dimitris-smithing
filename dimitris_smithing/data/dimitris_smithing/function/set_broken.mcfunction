execute if data storage dbarr:tmp armor_slot run data modify storage dbarr:tmp args.item_slot set from storage dbarr:tmp armor_slot
data modify storage dbarr:tmp args.item_slot set value "weapon.offhand"
$execute unless data storage dbarr:tmp armor_slot if items entity @s weapon.mainhand $(item_id) \ 
    run data modify storage dbarr:tmp args.item_slot set value "weapon.mainhand"
function dimitris_smithing:store_tool_components with storage dbarr:tmp args
#tellraw @a [{storage:"dbarr:tmp",nbt:"item_slot"},{storage:"dbarr:tmp",nbt:"item_id"}, {storage:"dbarr:tmp",nbt:"args"}]
data remove storage dbarr:tmp args