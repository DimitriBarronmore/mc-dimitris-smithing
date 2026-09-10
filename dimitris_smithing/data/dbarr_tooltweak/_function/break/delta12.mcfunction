advancement revoke @s only dbarr_tooltweak:deltas/break_delta_12
#say break_delta_12

data modify storage dbarr:tmp delta set value 12
function dbarr_tooltweak:set_broken
data remove storage dbarr:tmp delta

    