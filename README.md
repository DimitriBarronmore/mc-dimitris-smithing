# mc-dimitris-smithing
A datapack for MC 1.20.10+ that rebalances crafting, keeping, upgrading, and repairing your gear.

Inspired heavily by https://github.com/sisby-folk/tinkerers-smithing.

## Pack features:
- All tools can be repaired in an anvil using appropriate materials, including tools that can normally only be repaired through anvil combining.
    - flint_and_steel = #minecraft:iron_tool_materials
    - brush = minecraft:feather
    - fishing_rod = minecraft:string
    - carrot_on_a_stick = minecraft:carrot
    - warped_fungus_on_a_stick = minecraft:warped_fungus
    - shears = #minecraft:iron_tool_materials
    - shield = #minecraft:iron_tool_materials
    - bow = minecraft:string
    - trident = #dbarr_tooltweak:prismarine_materials (prismarine crystals or shards)
    - crossbow = minecraft:string
- All gear can be upgraded to a higher tier by combining them in a smithing table with a sacrificial higher-tier item of the same type.
- The anvil's "prior work" penalty is capped to be at most 15 levels to make repairing tools long-term without mending more achievable. (Make sure you put items on your cursor so they update.)
- Any named gear which would break will instead transmute into an identical-looking "broken" version until repaired on an anvil or with mending, similar to an elytra.
