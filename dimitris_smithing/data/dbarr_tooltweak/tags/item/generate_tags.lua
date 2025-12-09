local base_template = [[
{
  "values":[
    %s
]
}

]]

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

function write_file(tier, list)
    local txt = base_template:format(list)
    local f = io.open("tools_" .. tier .. ".json", "w+")
    f:write(txt)
    f:close()
end

for _, tier in ipairs(tool_tiers) do
    local names = {}
    for _, tool in ipairs(tools) do
        names[#names+1] = "\"minecraft:" .. tier .. "_" .. tool .."\""
    end
    write_file(tier, table.concat(names, ",\n\t"))
end

-- for j, item_type in ipairs(tools) do
--     for i, tier in ipairs(tool_tiers) do
--         if not tool_tiers[i+1] then break end
--         for k = i+1, #tool_tiers do
--             write_file(item_type, tier, tool_tiers[k])
--         end
--     end
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
