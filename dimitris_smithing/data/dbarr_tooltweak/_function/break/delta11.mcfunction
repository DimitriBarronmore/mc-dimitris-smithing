advancement revoke @s only dbarr_tooltweak:deltas/break_delta_11
#say break_delta_11

data modify storage dbarr:tmp delta set value 11
function dbarr_tooltweak:set_broken
data remove storage dbarr:tmp delta

    