data modify storage dbarr:tmp args.item_slot set value "weapon.offhand"
execute if data storage dbarr:tmp armor_slot run data modify storage dbarr:tmp args.item_slot set from storage dbarr:tmp armor_slot
$execute unless data storage dbarr:tmp armor_slot if items entity @s weapon.mainhand $(item_id) \ 
    run data modify storage dbarr:tmp args.item_slot set value "weapon.mainhand"
function dimitris_smithing:break_and_repair/store_tool_components with storage dbarr:tmp args
data remove storage dbarr:tmp args