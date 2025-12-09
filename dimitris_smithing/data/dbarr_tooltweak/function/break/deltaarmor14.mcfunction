advancement revoke @s only dbarr_tooltweak:deltas/break_delta_armor14
#say break_delta_armor14
data modify storage dbarr:tmp is_armor set value 1b
data modify storage dbarr:tmp delta set value 14
function dbarr_tooltweak:set_broken
data remove storage dbarr:tmp delta
data remove storage dbarr:tmp is_armor
    