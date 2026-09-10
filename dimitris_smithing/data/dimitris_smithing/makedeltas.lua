-- Not currently used, but might be useful again in the future.

function write_file(delta)
    -- Advancements
    local txt = ([[
{
  "criteria": {
    "nearly_broken": {
      "trigger": "minecraft:item_durability_changed",
      "conditions": {
        "delta": -%s,
        "durability": {
          "max": 0
        },
        "item": {
          "items": "#dbarr_tooltweak:%s"
        }
      }
    }
  },
  "rewards": {
    "function": "dbarr_tooltweak:break/delta%s"
  }
}
    ]])
    for i, tag in  ipairs{"tools", "armors"} do
      local n = (i == 2 and "armor" .. delta ) or delta
      local txt = txt:format(delta, tag, n)
    local f = io.open("advancement/deltas/break_delta_" .. n .. ".json", "w+")
    f:write(txt)
    f:close()
    end
    local f = io.open("advancement/deltas/break_delta_shield.json", "w+")
    f:write[[
{
  "criteria": {
    "nearly_broken": {
      "trigger": "minecraft:item_durability_changed",
      "conditions": {
        "delta": {
          "max": -17
        },
        "durability": {
          "max": 0
        },
        "item": {
          "items": "minecraft:shield"
        }
      }
    }
  },
  "rewards": {
    "function": "dbarr_tooltweak:break/deltashield"
  }
}
]]
    f:close()
    -- Functions
    local txt = ([[
advancement revoke @s only dbarr_tooltweak:deltas/break_delta_%s
#say break_delta_%s
%s
data modify storage dbarr:tmp delta set value %s
function dbarr_tooltweak:set_broken
data remove storage dbarr:tmp delta
%s
    ]])
    for i, tag in  ipairs{"tools", "armors"} do
      local n = (i == 2 and "armor" .. delta ) or delta
      local x = (i == 2 and "data modify storage dbarr:tmp is_armor set value 1b") or ""
      local y = (i == 2 and "data remove storage dbarr:tmp is_armor") or ""
      local txt = txt:format(n, n, x, delta, y)
    local f = io.open("function/break/delta" .. n .. ".mcfunction", "w+")
    f:write(txt)
    f:close()
    end
    local f = io.open("function/break/deltashield.mcfunction", "w+")
    f:write[[
advancement revoke @s only dbarr_tooltweak:break_delta_shield
#say break_delta_shield
data modify storage dbarr:tmp is_shield set value 1b
function dbarr_tooltweak:set_broken
data remove storage dbarr:tmp is_shield
    ]]
    f:close()
end
for i = 1, 16 do
    write_file(i)
end
