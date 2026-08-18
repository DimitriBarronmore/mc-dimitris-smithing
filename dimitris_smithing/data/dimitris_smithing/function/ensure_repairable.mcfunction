## Change netherite tools and armors to use diamond materials.
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
    "items": "#dimitris_smithing:tools_netherite", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#minecraft:netherite_tool_materials" \
      } \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#minecraft:diamond_tool_materials" \
      } \
    } \
  } \
}
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
    "items": "#dimitris_smithing:armor_netherite", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#minecraft:repairs_netherite_armor" \
      } \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#minecraft:repairs_diamond_armor" \
      } \
    } \
  } \
}

## Flint and Steel repairs with iron.
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
    "items": "minecraft:flint_and_steel", \
    "predicates": { \
      "minecraft:repairable": {} \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#minecraft:iron_tool_materials" \
      } \
    } \
  } \
}

## Brush repairs with feathers.
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
    "items": "minecraft:brush", \
    "predicates": { \
      "minecraft:repairable": {} \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "minecraft:feather" \
      } \
    } \
  } \
}

## Fishing rod repairs with string.
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
    "items": "minecraft:fishing_rod", \
    "predicates": { \
      "minecraft:repairable": {} \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "minecraft:string" \
      } \
    } \
  } \
}

## Carrot on a stick repairs with carrots.
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
    "items": "minecraft:carrot_on_a_stick", \
    "predicates": { \
      "minecraft:repairable": {} \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "minecraft:carrot" \
      } \
    } \
  } \
}

## Fungus on a stick repairs with warped fungus.
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
    "items": "minecraft:warped_fungus_on_a_stick", \
    "predicates": { \
      "minecraft:repairable": {} \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "minecraft:warped_fungus" \
      } \
    } \
  } \
}

## Shears repair with iron.
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
    "items": "minecraft:shears", \
    "predicates": { \
      "minecraft:repairable": {} \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#minecraft:iron_tool_materials" \
      } \
    } \
  } \
}

## Shield repairs with iron.
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
    "items": "minecraft:shield", \
    "predicates": { \
      "minecraft:repairable": {} \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#minecraft:iron_tool_materials" \
      } \
    } \
  } \
}

## Bow repairs with string.
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
    "items": "minecraft:bow", \
    "predicates": { \
      "minecraft:repairable": {} \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "minecraft:string" \
      } \
    } \
  } \
}

## Crossbow repairs with string.
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
    "items": "minecraft:crossbow", \
    "predicates": { \
      "minecraft:repairable": {} \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "minecraft:string" \
      } \
    } \
  } \
}

## Trident repairs with prismarine.
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
    "items": "minecraft:trident", \
    "predicates": { \
      "minecraft:repairable": {} \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#dimitris_smithing:prismarine_materials" \
      } \
    } \
  } \
}