advancement revoke @s only dbarr_tooltweak:deltas/break_delta_8
#say break_delta_8

data modify storage dbarr:tmp delta set value 8
function dbarr_tooltweak:set_broken
data remove storage dbarr:tmp delta

    