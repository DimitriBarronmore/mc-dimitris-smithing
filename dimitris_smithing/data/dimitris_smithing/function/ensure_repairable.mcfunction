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
        "items": "#dimitris_smithing:repairs/netherite" \
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
        "items": "#dimitris_smithing:repairs/netherite" \
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
        "items": "minecraft:flint_and_steel" \
    }, \
    "on_pass": { \
        "type": "minecraft:filtered", \
        "item_filter": { \
        "predicates": { \
            "minecraft:repairable": {} \
        } \
        }, \
        "on_fail": { \
        "type": "minecraft:set_components", \
        "components": { \
            "minecraft:repairable": { \
            "items": "#minecraft:iron_tool_materials" \
            } \
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
        "items": "minecraft:brush" \
    }, \
    "on_pass": { \
        "type": "minecraft:filtered", \
        "item_filter": { \
        "predicates": { \
            "minecraft:repairable": {} \
        } \
        }, \
        "on_fail": { \
        "type": "minecraft:set_components", \
        "components": { \
            "minecraft:repairable": { \
            "items": "minecraft:feather" \
            } \
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
        "items": "minecraft:fishing_rod" \
    }, \
    "on_pass": { \
        "type": "minecraft:filtered", \
        "item_filter": { \
        "predicates": { \
            "minecraft:repairable": {} \
        } \
        }, \
        "on_fail": { \
        "type": "minecraft:set_components", \
        "components": { \
            "minecraft:repairable": { \
            "items": "minecraft:string" \
            } \
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
        "items": "minecraft:carrot_on_a_stick" \
    }, \
    "on_pass": { \
        "type": "minecraft:filtered", \
        "item_filter": { \
        "predicates": { \
            "minecraft:repairable": {} \
        } \
        }, \
        "on_fail": { \
        "type": "minecraft:set_components", \
        "components": { \
            "minecraft:repairable": { \
            "items": "minecraft:carrot" \
            } \
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
        "items": "minecraft:warped_fungus_on_a_stick" \
    }, \
    "on_pass": { \
        "type": "minecraft:filtered", \
        "item_filter": { \
        "predicates": { \
            "minecraft:repairable": {} \
        } \
        }, \
        "on_fail": { \
        "type": "minecraft:set_components", \
        "components": { \
            "minecraft:repairable": { \
            "items": "minecraft:warped_fungus" \
            } \
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
        "items": "minecraft:shears" \
    }, \
    "on_pass": { \
        "type": "minecraft:filtered", \
        "item_filter": { \
        "predicates": { \
            "minecraft:repairable": {} \
        } \
        }, \
        "on_fail": { \
        "type": "minecraft:set_components", \
        "components": { \
            "minecraft:repairable": { \
            "items": "#minecraft:iron_tool_materials" \
            } \
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
        "items": "minecraft:shield" \
    }, \
    "on_pass": { \
        "type": "minecraft:filtered", \
        "item_filter": { \
        "predicates": { \
            "minecraft:repairable": {} \
        } \
        }, \
        "on_fail": { \
        "type": "minecraft:set_components", \
        "components": { \
            "minecraft:repairable": { \
            "items": "#minecraft:iron_tool_materials" \
            } \
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
        "items": "minecraft:bow" \
    }, \
    "on_pass": { \
        "type": "minecraft:filtered", \
        "item_filter": { \
        "predicates": { \
            "minecraft:repairable": {} \
        } \
        }, \
        "on_fail": { \
        "type": "minecraft:set_components", \
        "components": { \
            "minecraft:repairable": { \
            "items": "minecraft:string" \
            } \
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
        "items": "minecraft:crossbow" \
    }, \
    "on_pass": { \
        "type": "minecraft:filtered", \
        "item_filter": { \
        "predicates": { \
            "minecraft:repairable": {} \
        } \
        }, \
        "on_fail": { \
        "type": "minecraft:set_components", \
        "components": { \
            "minecraft:repairable": { \
            "items": "minecraft:string" \
            } \
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
        "items": "minecraft:trident" \
    }, \
    "on_pass": { \
        "type": "minecraft:filtered", \
        "item_filter": { \
        "predicates": { \
            "minecraft:repairable": {} \
        } \
        }, \
        "on_fail": { \
        "type": "minecraft:set_components", \
        "components": { \
            "minecraft:repairable": { \
            "items": "#dimitris_smithing:prismarine_materials" \
            } \
        } \
        } \
    } \
    }