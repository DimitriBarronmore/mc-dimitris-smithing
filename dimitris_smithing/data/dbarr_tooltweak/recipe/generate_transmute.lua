local base_template = [[
{
  "type": "minecraft:smithing_transform",
  "base": [
    "minecraft:%s"
  ],
  "addition": [
    "minecraft:%s"
  ],
  "result": {
    "id": "minecraft:%s"
  }
}
]]

--[[

Premise: You can upgrade tools and armors to a higher tier in a smithing table.
Doing this consumes an item of the higher tier, but retains all custom data.

--]]


local tools = {
    "shovel",
    "axe",
    "pickaxe",
    "hoe",
    "sword",
    "spear"
}

local tool_tiers = {
    "wooden",
    "stone",
    "copper",
    "golden",
    "iron",
    "diamond",
    "netherite"
}

function write_file(type, curr, next)
    local current = curr .. "_" .. type
    local next = next .. "_" .. type
    local txt = base_template:format(current, next, next)
    local f = io.open("upgrade_" .. current .. "-" .. next .. ".json", "w+")
    f:write(txt)
    f:close()
end

for j, item_type in ipairs(tools) do
    for i, tier in ipairs(tool_tiers) do
        if not tool_tiers[i+1] then break end
        for k = i+1, #tool_tiers do
            write_file(item_type, tier, tool_tiers[k])
        end
    end
end

-- for _, item_type in ipairs(tools) do
--     write_file(item_type, "stone", "copper")
-- end
-- for _, item_type in ipairs(tools) do
--     write_file(item_type, "copper", "iron")
-- end
-- for _, item_type in ipairs(tools) do
--     write_file(item_type, "iron", "golden")
-- end
-- for _, item_type in ipairs(tools) do
--     write_file(item_type, "golden", "diamond")
-- end
-- for _, item_type in ipairs(tools) do
--     write_file(item_type, "golden", "netherite")
-- end

local armors = {
    "helmet",
    "chestplate",
    "leggings",
    "boots"
}

local armor_tiers = {
    "leather",
    "copper",
    "golden",
    "chainmail",
    "iron",
    "diamond",
    "netherite"
}

for _, item_type in ipairs(armors) do
    for i, tier in ipairs(armor_tiers) do
        if not armor_tiers[i+1] then break end
        for k = i+1, #armor_tiers do
            write_file(item_type, tier, armor_tiers[k])
        end
    end
end

-- for _, item_type in ipairs(armors) do
--     write_file(item_type, "leather", "chainmail")
-- end
-- for _, item_type in ipairs(armors) do
--     write_file(item_type, "leather", "copper")
-- end
-- for _, item_type in ipairs(armors) do
--     write_file(item_type, "chainmail", "iron")
-- end
-- for _, item_type in ipairs(armors) do
--     write_file(item_type, "copper", "iron")
-- end
-- for _, item_type in ipairs(armors) do
--     write_file(item_type, "iron", "golden")
-- end
-- for _, item_type in ipairs(armors) do
--     write_file(item_type, "golden", "diamond")
-- end
-- for _, item_type in ipairs(armors) do
--     write_file(item_type, "golden", "netherite")
-- end
