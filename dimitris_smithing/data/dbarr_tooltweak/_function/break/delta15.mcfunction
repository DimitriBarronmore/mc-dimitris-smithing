advancement revoke @s only dbarr_tooltweak:deltas/break_delta_15
#say break_delta_15

data modify storage dbarr:tmp delta set value 15
function dbarr_tooltweak:set_broken
data remove storage dbarr:tmp delta

    