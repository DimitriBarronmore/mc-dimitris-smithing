item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
        "type": "minecraft:filtered", \
        "item_filter": { \
            "predicates": { \
            "minecraft:repair_cost": {} \
            } \
        }, \
        "on_pass": { \
            "type": "minecraft:set_components", \
            "components": { \
            "!minecraft:repair_cost": {} \
            } \
        } \
    }