advancement revoke @s only dbarr_tooltweak:deltas/break_delta_7
#say break_delta_7

data modify storage dbarr:tmp delta set value 7
function dbarr_tooltweak:set_broken
data remove storage dbarr:tmp delta

    