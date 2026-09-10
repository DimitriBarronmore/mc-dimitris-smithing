advancement revoke @s only dbarr_tooltweak:deltas/break_delta_5
#say break_delta_5

data modify storage dbarr:tmp delta set value 5
function dbarr_tooltweak:set_broken
data remove storage dbarr:tmp delta

    